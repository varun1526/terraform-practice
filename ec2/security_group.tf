module "ec2_sg" {
  source = "terraform-aws-modules/security-group/aws"
  name = "ec2-sg"
  ingress_with_cidr_blocks = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "My ssh ports"
      cidr_blocks = "49.43.109.113/32"
    }
  ]
  egress_with_cidr_blocks = [
    {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = "0.0.0.0/0"
    }
  ]
}