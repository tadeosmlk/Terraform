resource "vault_aws_secret_backend" "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  #path =  "${var.service}-sap-ariba-${var.env}-${var.dc}-${var.acct_type}-bootstrap"
  path = var.vaultRolePath
  default_lease_ttl_seconds = "900"
  max_lease_ttl_seconds     = "900"
}

data "template_file" "policy" {
    template = file("${path.module}/iamPolicies.json")
}

resource "vault_aws_secret_backend_role" "roleSet" {
    backend         = vault_aws_secret_backend.aws.path
    credential_type = "assumed_role"
    name = "AWS-full-role"
    policy_document = data.template_file.policy.rendered
    #role_arns      = [var.rolearn["${var.service}-sap-ariba-${var.env}-${var.dc}-${var.acct_type}-bootstrap"]]
    role_arns = [var.rolearn[var.vaultRolePath]]
    depends_on = [vault_aws_secret_backend.aws]
}
