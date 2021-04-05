resource "vault_aws_secret_backend" "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  path =  "${var.service}-sap-ariba-${var.env}-${var.dc}-${var.acct_type}-bootstrap"
  default_lease_ttl_seconds = "900"
  max_lease_ttl_seconds     = "900"
}

data "template_file" "policy" {
    template = file("${path.module}/iamPolicies.json")
    #template = file("./iamPolicies.json")
}

resource "vault_aws_secret_backend_role" "roleSet" {
    backend         = vault_aws_secret_backend.aws.path
    credential_type = "assumed_role"
    name = "AWS-vault-full-role"
    policy_document = data.template_file.policy.rendered
    #policy_document = var.policy_doc
    role_arns      = [var.rolearn["${var.service}-sap-ariba-${var.env}-${var.dc}-${var.acct_type}-bootstrap"]]
    depends_on = [vault_aws_secret_backend.aws]
}


