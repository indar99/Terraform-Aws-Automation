resource "aws_vpc" "mvpc" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "default"

  tags = {
    Name = "prod"
  }
}
