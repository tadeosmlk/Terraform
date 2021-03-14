#!/bin/bash


vtoken=$2
vaultURL="http://52.41.11.67:8200"
aws_account=$1
echo $aws_account
awscreRaw=$(python3 setAcctCred.py -i jenkins -a $aws_account -v $vtoken)

access_key=$(echo $awscreRaw |awk '{ print $1}')
secret_key=$(echo $awscreRaw |awk '{ print $2}')

export TF_VAR_aws_access_key=$access_key
export TF_VAR_aws_secret_key=$secret_key
export VAULT_ADDR=$vaultURL
export VAULT_TOKEN=$vtoken


