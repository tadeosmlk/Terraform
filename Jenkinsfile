pipeline {
    agent any
    parameters {
        password(name: 'VaultToken', description: 'Token to access vault')
        
        choice(name: 'Environment', choices: ['Prod', 'Stg', 'Dev'])
        choice(name: 'Site', choices: ['Primary', 'Seconary'])
        choice(name: 'Service', choices: ['Prodeu', 'Prodau', 'Produs'])
        choice(name: 'AccountType', choices: ['infra', 'cluster', 'data', 'dmz', 'logging', 'security'])
        choice(name: 'Resource', choices: ['network-vpc', 'network-subnet', 'network-igw', 'network-tgw', 'network-ngw', 'ec2-instance'])
        //string()
    }
    stages {
        stage("Set Creds"){
            steps{
                sh ("echo ${params.VaultToken}")
               /*script{ params.each {param ->
                    println "'${param.key.trim()}' -> '${param.value}'"
                }
               }*/
            }
        }
    }
}
