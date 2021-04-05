variable "aws_access_key" {  }
variable "aws_secret_key" {  }

module vaultRoleSet {
    source = "./modules/vaultRole"
    #policy_doc = data.template_file.policy.rendered
    aws_access_key = var.aws_access_key
    aws_secret_key = var.aws_secret_key

 }


