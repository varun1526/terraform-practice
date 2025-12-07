resource "aws_key_pair" "ec2" {
  key_name   = "ec2"
  public_key = file("${path.module}/key_pair.pub")
}


module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  name = "instance-1"
  instance_type = var.instance_type
  create_security_group = false
  security_group_name = module.ec2_sg.security_group_name
  key_name = aws_key_pair.ec2.key_name
  subnet_id = data.aws_subnets.subnet.ids[0]
  associate_public_ip_address=true
  tags = {
    team: "Devops"
  }
}