variable "vpc_cidr" {
  type = string
}

variable "enable_dns_hostnames" {
  type = bool
  default = true
}

variable "enable_dns_support" {
  type = bool
  default = true
}

variable "common_tags" {
  type = map
  default = {}
}

variable "project_name" {
  type = string
}

variable "vpc_tags" {
  type = map
  default = {}
}

variable "igw_tags" {
  type = map
  default = {}
}

variable "public_subnet_cidr" {
  type = list
  validation {
    condition = length(var.public_subnet_cidr) == 2
    error_message = "please provide only two public subnet CIDR"
  }
}

variable "private_subnet_cidr" {
  type = list
  validation {
    condition = length(var.private_subnet_cidr) == 2
    error_message = "please provide only two private subnet CIDR"
  }
}

variable "database_subnet_cidr" {
  type = list
  validation {
    condition = length(var.database_subnet_cidr) == 2
    error_message = "please provide only two database subnet CIDR"
  }
}