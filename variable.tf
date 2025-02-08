variable "vpc_cidr" {
    
}

variable "enable_dns_hostnames" {
    default = true
}

variable "common_tags"{

}

variable "vpc_tags" {
    default = {}
}

variable "project_name"{

}

variable "environment"{
    
}

variable "ig_tags" {
    default = {}
}

variable "public_subnet_cidrs"{
    type = list
    validation {
        condition = length(var.public_subnet_cidrs) == 2
        error_message = "please allow to sub-net values"
    }
}

variable "private_subnet_cidrs"{
    type = list
    validation {
        condition = length(var.private_subnet_cidrs) == 2
        error_message = "please allow to sub-net values"
    }
}

variable "database_subnet_cidrs"{
    type = list
    validation {
        condition = length(var.database_subnet_cidrs) == 2
        error_message = "please allow to sub-net values"
    }
}
