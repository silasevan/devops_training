

module "network" {
  source = "./modules/network"

  vpc_cidr              = var.vpc_cidr
  public_subnet_cidr_1  = var.public_subnet_cidr_1
  public_subnet_cidr_2  = var.public_subnet_cidr_2
  private_subnet_cidr_1 = var.private_subnet_cidr_1
  private_subnet_cidr_2 = var.private_subnet_cidr_2
  availability_zone_1   = var.availability_zone_1
  availability_zone_2   = var.availability_zone_2

}

module "rds" {
  source = "./modules/rds"

  subnet_ids            = module.network.private_subnet_ids
  vpc_security_group_id = module.network.rds_sg_id
  db_name               = var.db_name
  db_username           = var.db_username
  db_password           = var.db_password
}

module "efs" {
  source = "./modules/efs"

  subnet_ids         = module.network.private_subnet_ids
  security_group_id  = module.network.ec2_sg_id
}

module "compute" {
  source = "./modules/computes"

  ami_id              = var.ami_id
  instance_type       = var.instance_type
  key_name            = var.key_name
  user_data           = templatefile("${path.module}/user_data.sh", {
    efs_id       = module.efs.efs_id
    db_name      = var.db_name
    db_username  = var.db_username
    db_password  = var.db_password
    db_endpoint  = module.rds.rds_endpoint
  })
  public_subnet_ids   = module.network.public_subnet_ids
  private_subnet_ids  = module.network.private_subnet_ids
  launch_template_sg  = module.network.ec2_sg_id
  vpc_id              = module.network.vpc_id
}
