
variable "vpc_cidr"{
  default = "10.0.0.0/24"
}

variable "pub_sub"{
  default = "10.0.0.0/28"
}

variable "amis"{
  default = "ami-09558250a3419e7d0"
}

variable "vm_type"{
  default = "t2.micro"
}

