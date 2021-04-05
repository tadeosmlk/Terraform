import hvac
import os
import argparse
import json

def main(): 

    parser = argparse.ArgumentParser()
    parser.add_argument('-invoker')
    parser.add_argument('-vault_token')
    parser.add_argument('-acct_type')
    parser.add_argument('-url')

    args = vars(parser.parse_args())
    invoker = args['invoker']
    vault_token =   args['vault_token']

    URL = "http://52.41.11.67:8200"
    URL = args['url']

    os.environ['VAULT_ADDR']= URL
    os.environ['VAULT_TOKEN'] = vault_token
    mount_point = 'kv'
    
    secret_path = args['acct_type']
    client = hvac.Client(url=URL)
    secret = {}
    read_secret_result = client.secrets.kv.v2.read_secret_version(path=secret_path, mount_point=mount_point)
    #print(read_secret_result['data']['data']['access_key'])
    
    accessKey = client.secrets.kv.v2.read_secret_version(path=secret_path, mount_point='kv')['data']['data']['access_key']
    secretKey = client.secrets.kv.v2.read_secret_version(path=secret_path, mount_point='kv')['data']['data']['secret_key']
    #os.environ['TF_VAR_aws_access_key'] = client.secrets.kv.v2.read_secret_version(path=secret_path, mount_point='kv')['data']['data']['access_key']
    #os.environ['TF_VAR_aws_secret_key'] = client.secrets.kv.v2.read_secret_version(path=secret_path, mount_point='kv')['data']['data']['secret_key']
    secret['access_key'] = accessKey
    secret['secret_key'] = secretKey

    invoker = input
    print(json.dumps(secret))
    with open(secret_path+".json", 'w+') as account_key:
        account_key.write(json.dumps(secret))

    return secret

if __name__ == "__main__":
    main()