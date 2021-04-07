variable "aws_access_key" {  }
variable "aws_secret_key" {  }
variable "vaultToken" {}
variable "rolearn" { type = "map"}
module vaultRoleSet {
    source = "./modules/vaultRole"
    aws_access_key = var.aws_access_key
    aws_secret_key = var.aws_secret_key
    vaultToken= var.vaultToken
    rolearn = var.rolearn
 }


#sh script: "$tf_cmd plan -var-file=$path_vars" + "/" + params.service.trim() + ".tfvars" + " -var-file=$path_vars" + "/" +  params.account_type.trim() + "/"  + params.resource.trim() + "/" + params.service.trim() + ".tfvars"
#             tf plan -var-file=./prod/prodeu/site1/prodeu.tfvars                              -var-file=./prod/prodeu/site1/data/vaultRole/prodeu.tfvars 
#                                }





