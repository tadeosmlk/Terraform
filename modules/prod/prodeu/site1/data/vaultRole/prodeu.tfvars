#----Start VaultRole variables

vaultUrl = "http://52.41.11.67:8200"}
vaultRolePath = "prodeu-sap-ariba-prod-eu-infra-bootstrap"
env = "prod"
dc       = "eu"}
acct_type  = "infra"}
service = "prodeu"}
rolearn =   {
        "prodeu-sap-ariba-prod-eu-infra-bootstrap" = "arn:aws:iam::101167374455:role/TestMultiAccount"
        "prodeu-sap-ariba-prod-eu-cluster-bootstrap" = ""
        "prodeu-sap-ariba-prod-eu-data-bootstrap" = "arn:aws:iam::419164422938:role/TestAccountProdRole"
        "prodeu-sap-ariba-prod-eu-dmz-bootstrap" = ""
        "prodeu-sap-ariba-prod-eu-logging-bootstrap" = ""
        "prodeu-sap-ariba-prod-eu-security-bootstrap" = ""

  }
}

#----End VaultRole variables

