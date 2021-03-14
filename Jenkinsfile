pipeline {
    agent any
    parameters {
        password(name: 'VaultToken', description: 'Token to access vault')
        
        choice(name: 'Environment', choices: ['Prod', 'Stg', 'Dev'])
        choice(name: 'Site', choices: ['Primary', 'Seconary'])
        choice(name: 'Service', choices: ['Prodeu', 'Prodau', 'Produs'])
        choice(name: 'AccountType', choices: ['prod-act', 'infra', 'cluster', 'data', 'dmz', 'logging', 'security'])
        choice(name: 'Resource', choices: ['network-vpc', 'network-subnet', 'network-igw', 'network-tgw', 'network-ngw', 'ec2-instance'])
        //string()
    }
    stages {
	stage("Install requirements"){
	steps{
		sh ("pip install -r requirements.txt")
		}
	}
        stage("Set Creds"){
            steps{
		    sh ("source ./env.sh ${AccountType} ${VaultToken}")
		    sh ("echo $TF_VAR_aws_access_key")
               /*script{ params.each {param ->
                    println "'${param.key.trim()}' -> '${param.value}'"
                }
               }*/
            }
        }
    }
}
