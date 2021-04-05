
#!/bin/bash

aws_account=$1
vtoken=$2
vaultURL=$3
#vaultURL="http://52.41.11.67:8200"

echo $aws_account
awscreRaw=$(python setAcctCred.py -i jenkins -a $aws_account -u $vaultURL )

access_key=$(echo $awscreRaw |awk '{ print $1}')
secret_key=$(echo $awscreRaw |awk '{ print $2}')

export TF_VAR_aws_access_key=$access_key
export TF_VAR_aws_secret_key=$secret_key
export VAULT_ADDR=$vaultURL
export VAULT_TOKEN=$vtoken