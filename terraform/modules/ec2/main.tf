resource "aws_instance" "monitoring_server" {

  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [var.sg_id]

  tags = {
    Name        = var.instance_name
    Environment = var.environment
  }
}