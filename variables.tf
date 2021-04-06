variable "instance_ami" {
	default = "ami-06e54d05255faf8f6"
}

variable "instance_typee" {
    default =   "t2.micro"
}


variable "environmentt" { 
    type = string
    default = "dev"
}

variable "vaultToken" {}