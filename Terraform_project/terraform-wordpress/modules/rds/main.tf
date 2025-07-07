
resource "aws_db_subnet_group" "this" {
  name       = "wordpress-db-subnet-group"
  subnet_ids = var.subnet_ids

  tags = {
    Name = "wordpress-db-subnet-group"
  }
}

resource "aws_db_instance" "this" {
  identifier              = "wordpress-db"
  engine                  = "mysql"
  engine_version          = "8.0"
  instance_class          = "db.t3.micro"
  allocated_storage       = 20
  db_name                 = var.db_name
  username                = var.db_username
  password                = var.db_password
  db_subnet_group_name    = aws_db_subnet_group.this.name
  vpc_security_group_ids  = [var.vpc_security_group_id]
  skip_final_snapshot     = true
  publicly_accessible     = false
  backup_retention_period = 7
  multi_az                = false

  tags = {
    Name = "wordpress-db"
  }
}

output "rds_endpoint" {
  value = aws_db_instance.this.endpoint
}

