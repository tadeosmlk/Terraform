
#variable "env"            {default = "prod"}
#variable "dc"             {default = "eu"}
#variable "acct_type"      {default = "infra"}
#variable "service"        {default = "prodeu"}
variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "vaultToken" {}
variable "vaultUrl"   { default = "http://52.41.11.67:8200"}
variable "vaultRolePath" {default = "prodeu-sap-ariba-prod-eu-infra-bootstrap"}

variable "rolearn" { type = "map" }


#variable "vaultPath" {
#    type = list(string)
#    default = [
#        "prodeu-sap-ariba-prod-eu-infra-bootstrap",
#        "prodeu-sap-ariba-prod-eu-cluster-bootstrap",
#        "prodeu-sap-ariba-prod-eu-data-bootstrap",
#        "prodeu-sap-ariba-prod-eu-dmz-bootstrap",
#        "prodeu-sap-ariba-prod-eu-logging-bootstrap",
#        "prodeu-sap-ariba-prod-eu-security-bootstrap"
#]
#}3

#variable "policyArns2" {
#    default = {
#        network-vpc =  ["arn:aws:iam::aws:policy/AmazonVPCFullAccess", 
#                    "arn:aws:iam::419164422938:policy/AribaVaultDemoS3Full"]
#        network-subnet = ["arn:aws:iam::aws:policy/AmazonVPCFullAccess", 
#                    "arn:aws:iam::aws:policy/AmazonEC2FullAccess"]
#        network-igw = ["arn:aws:iam::aws:policy/AmazonVPCFullAccess", 
#                    "arn:aws:iam::aws:policy/AmazonEC2FullAccess"]
#        network-tgw = ["arn:aws:iam::aws:policy/AmazonVPCFullAccess", 
#                    "arn:aws:iam::aws:policy/AmazonEC2FullAccess"]
#        network-ngw = ["arn:aws:iam::aws:policy/AmazonVPCFullAccess", 
#                    "arn:aws:iam::aws:policy/AmazonEC2FullAccess"]
#        ec2-full = ["arn:aws:iam::aws:policy/AmazonVPCFullAccess", 
###                    "arn:aws:iam::aws:policy/AmazonEC2FullAccess"]
#}