provider  "aws" {
	access_key = "AKIAXEXDBMSXA2HKXLF3"
	secret_key = "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"
	region = "us-west-2"
}

module "core" {
    source =        "./site/core"
    #ami_def = 	"ami-06e54d05255faf8f6"        #	var.instance_ami
}

module "backup" {
	source = "./site/backup"
 
}
#resource "aws_instance" "dev" {
 # ami = var.instance_ami
  #ami       = "ami-06e54d05255faf8f6"
#  instance_type = "t2.micro"
#  subnet_id = " subnet-086adfb29f30e035e"
#  vpc_security_group_ids = ["sg-022b91e29536e2d42"]
# }

##resource "aws_backup_plan" "backupTest" {
#	name = "tf_example_backup_plan"

#	rule {
#		rule_name 			= "tf_example_backup_plan"
#		target_vault_name 	= aws_backup_vault.test.name
#		schedule 			= "cron(0 12 * * ? *)"
#	}

#}
