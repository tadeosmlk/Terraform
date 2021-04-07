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





