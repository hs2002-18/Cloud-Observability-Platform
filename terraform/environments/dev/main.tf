module "security_group" {

  source  = "../../modules/security"

  sg_name = "dev-monitoring-sg"
}

module "ec2" {

  source         = "../../modules/ec2"

  ami_id         = var.ami_id
  instance_type  = var.instance_type
  key_name       = var.key_name

  sg_id          = module.security_group.sg_id

  instance_name  = "dev-monitoring-server"

  environment    = "dev"
}