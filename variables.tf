variable "project_name" {
    type = string
}

## SUbnet block
variable "vpc_cidr" {
    default = "10.0.0.0/16" 
}

variable "public_subnet_cidr" {
    type = list
    description = "please provide 2 public subnet cidr"

    validation {
        condition = (
        length(var.public_subnet_cidr) == 2
        )
        error_message = "Cidr list must be 2"
    }
}

variable "private_subnet_cidr" {
    type = list
    description = "please provide 2 private subnet cidr"

    validation {
        condition = (
        length(var.private_subnet_cidr) == 2
        )
        error_message = "Cidr list must be 2"
    }
}

variable "database_subnet_cidr" {
    type = list
    description = "please provide 2 database subnet cidr"

    validation {
        condition = (
        length(var.database_subnet_cidr) == 2
        )
        error_message = "Cidr list must be 2"
    }
}

## Tags Block

variable "vpc_tags" {
    type = map
    default = {}
}

variable "igw_tags" {
    type = map
    default = {}
}

variable "public_subnet_tags" {
    type = map
    default = {}
}

variable "private_subnet_tags" {
    type = map
    default = {}
}

          
variable "public_route_table_tags" {
    type = map
    default = {}
  
}

variable "private_route_table_tags" {
    type = map
    default = {}
  
}

variable "database_subnet_tags" {
    type = map
    default = {}
  
}

variable "database_route_table_tags" {
    type = map
    default = {}
  
}

variable "eip_tags" {
    type = map
    default = {}
  
}

variable "nat_gateway_tags" {
    type = map
    default = {}
  
}