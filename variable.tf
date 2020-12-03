variable "vpc_cidr"{
  default = "10.0.0.0/24"
}

variable "amis"{
  default = {
    us-east-1 = "ami-09558250a3419e7d0"
    us-east-2 = "ami-09558250a3419e7d0"
    us-east-2 = "ami-09558250a3419e7d0"
  }
}

variable "aws_region"{
  default = "us-east-2"
}

variable "vm_type" {
  default = "t2.micro"
}

variable "ec2_count"{
  default = "2"
}

