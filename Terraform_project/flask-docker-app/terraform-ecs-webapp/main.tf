
module "ecr" {
  source = "./modules/ecr"
  name   = "flask-ecr-repo"
  tags   = {
    Environment = "dev"
  }
}





module "network" {
  source               = "./modules/networking"
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  
}

resource "aws_security_group" "flask_sg" {
  name        = "flask_sg"
  description = "Allow Flask app"
  vpc_id      = module.network.vpc_id

  ingress {
    from_port   = 5000
    to_port     = 5000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

module "ecs" {
  source             = "./modules/ecs"
  cluster_name       = "flask-cluster"
  task_family        = "flask-task"
  container_image    = module.ecr.repository_url
  execution_role_arn = aws_iam_role.ecs_execution.arn
  service_name       = "flask-service"
  subnet_ids         = module.network.public_subnet_ids
  security_group_id  = aws_security_group.flask_sg.id
}



resource "aws_iam_role" "ecs_execution" {
  name = "ecsTaskExecutionRole-v2"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Principal = {
        Service = "ecs-tasks.amazonaws.com"
      },
      Effect = "Allow"
    }]
  })
}

resource "aws_iam_role_policy_attachment" "ecs_execution_policy" {
  role       = aws_iam_role.ecs_execution.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}


