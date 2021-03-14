import hvac
import os
import argparse

def main(): 

    parser = argparse.ArgumentParser()
    parser.add_argument('-invoker')
    parser.add_argument('-vault_token')
    parser.add_argument('-acct_type')

    args = vars(parser.parse_args())
    invoker = args['invoker']
    vault_token =   args['vault_token']

    URL = "http://52.41.11.67:8200"
    os.environ['VAULT_ADDR']= URL
    os.environ['VAULT_TOKEN'] = vault_token
    mount_point = 'kv'
    
    secret_path = args['acct_type']
    client = hvac.Client(url=URL)

    secret = {}
    try:
        read_secret_result = client.secrets.kv.v2.read_secret_version(
            path=secret_path, mount_point=mount_point
         )  
        secret["access_key"] = read_secret_result['data']['data']['access_key']
        secret["secret_key"] = read_secret_result['data']['data']['secret_key']
        print(secret['access_key'])
        print(secret['secret_key'])
    except Exception as e:
        print(e)

    return secret

if __name__ == "__main__":
    main()

