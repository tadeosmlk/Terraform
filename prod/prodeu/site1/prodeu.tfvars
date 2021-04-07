# Common Variables

environment_name="prod"
service_name = "prodeu"
env_type="site1"
bootstrap-type = "prod"
bucket_name="sap-ariba-prod-eu-prism-backend"


#----Start VaultRole variables


env = "prod"
dc       = "eu"
acct_type  = "infra"
service = "prodeu"
rolearn =   {
        "prodeu-sap-ariba-prod-eu-infra-bootstrap" = "arn:aws:iam::101167374455:role/TestMultiAccount"
        "prodeu-sap-ariba-prod-eu-cluster-bootstrap" = ""
        "prodeu-sap-ariba-prod-eu-data-bootstrap" = "arn:aws:iam::419164422938:role/TestAccountProdRole"
        "prodeu-sap-ariba-prod-eu-dmz-bootstrap" = ""
        "prodeu-sap-ariba-prod-eu-logging-bootstrap" = ""
        "prodeu-sap-ariba-prod-eu-security-bootstrap" = ""
}

#----End VaultRole variables





region_id = "eu-central-1"
az_id = "eu-central-1a"

#Service Labels
# Keep all label values in lower character
service_labels = {
  "service_name"  = "prodeu",
  "service_owner" = "ops_team",
  "service_type"  = "production",
  "application"   = "Prism"
  "site" = "primary"
}





