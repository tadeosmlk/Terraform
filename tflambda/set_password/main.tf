#variable "aws_access_key" {  }
#variable "aws_secret_key" {  }
variable "vaultToken" {}
variable "rolearn" { type = "map"}
variable "vaultUrl" {}
variable "vaultRolePath" {}

/*
module vaultRoleSet {
    source = "./modules/vaultRole"
    aws_access_key = var.aws_access_key
    aws_secret_key = var.aws_secret_key
    vaultToken= var.vaultToken
    rolearn = var.rolearn
    vaultRolePath = var.vaultRolePath
    vaultUrl = var.vaultUrl
 }*/

# handler = var.handler
#variable  "handler" {}

variable "bootstrap-type" {}
variable "service_name" {}
variable "env_type" {}
variable "account" {}
variable "function_name" {}

module lambda_set_password {
  source = "../modules/lambda/setPassword"
 
  bootstrap-type = var.bootstrap-type
service_name =  var.service_name
env_type = var.env_type
account = var.account
 rolearn = var.rolearn
 vaultRolePath = var.vaultRolePath
function_name = var.function_name
vaultToken= var.vaultToken
vaultUrl = var.vaultUrl
}


