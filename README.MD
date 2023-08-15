### VPC Module

This module is going to create following resources.
* VPC
* Internet Gateway
* 2 public subnets & 1 public route table
* 2 private subnets & 1 private route table
* 2 database  subnets & 1 database route table
* 1 EIP
* 1 Nat-gateway in 1a az
* assocition between public subnet and public route tables
* assocition between private subnet and private route tables

### Aruguments

**project-name** (Required)-- User Must provide his project name
**vpc_cidr** (optional) -- Default value is 10.0.0.0/16 <br/>
**tags**      (optinoal) -- Users can provide tags, other wiase empty <br/>
**public_subnet_cidr** (Required)-- Users must provide 2 valid subnets cidr <br/>
**public_subnet_names** (Required)-- Users must provide 2 valid subnets names <br/>
**private_subnet_cidr** (Required)-- Users must provide 2 valid subnets cidr <br/>
**private_subnet_names** (Required)-- Users must provide 2 valid subnets names <br/> 
