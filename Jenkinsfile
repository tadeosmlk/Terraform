import com.sap.ms.jenkins.*
import com.sap.ms.*
import groovy.json.JsonSlurper
def aws_secret_key
def aws_access_key
def TF_VAR_aws_secret_ke
pipeline {
 /*agent { label "swarm" }
    options {
      ansiColor('xterm')
    }*/
    agent any    
    parameters {
        password(name: 'VaultToken', description: 'Token to access vault')
	    choice(choices: ['Individual Resources'], description: 'How do you want to bootstrap?', name: 'bootstrap')
        choice(choices: ['prod'], description: 'Select the environment to bootstrap?', name: 'environment')
		choice(choices: ['prodstg','prodeu','produs'], description: 'Select the service to bootstrap?', name: 'service')
		choice(choices: ['site1','site2'],description: 'Select the environment type ?', name: 'envtype')
		choice(choices: ['data','cluster','infra','transit','logging','security','dmz'],description: 'Select the account type ?', name: 'account_type')        
		choice(choices: [
                           'iam/polices',
                           'iam/groups',
                           'iam/users',
                           'network/vpc',
                           'network/subnet',
                           'network/igw',                           
                           'network/tgw',  
                           'network/ngw',                             
                           'network/tgw-same-region-remote-vpc-peer',                                                    
                           'network/tgw-same-region-local-vpc-peer', 
                           'network/tgw-diff-region-remote-vpc-peer',
                           'network/gwlb',
                           'network/nwlb',
                           'network/alb',
                           'network/route-table', 
                           'network/security-groups',      
                           'network/security-groups-rules',    
                           'security/keys',
                           'storage/s3',                                                                       
                           'prism/docdb',  
                           'prism/emr',      
						 ],description: 'Select the resource to bootstrap?', name: 'resource')
        booleanParam(name: 'Plan', defaultValue: false, description: 'Perform Plan?')
        booleanParam(name: 'Apply', defaultValue: false, description: 'Perform Terraform apply?')
        booleanParam(name: 'Destroy', defaultValue: false, description: 'Perform Terraform Destroy?')        
	    booleanParam(name: 'Interactive', defaultValue: true, description: 'Every action requires approval ?')

    }




    /*agent { label "swarm" }
    options {
      ansiColor('xterm')
    }    
    parameters {
        password(name: 'VaultToken', description: 'Token to access vault')
        
        choice(name: 'Environment', choices: ['Prod', 'Stg', 'Dev'])
        choice(name: 'Site', choices: ['Primary', 'Seconary'])
        choice(name: 'Service', choices: ['Prodeu', 'Prodau', 'Produs'])
        choice(name: 'AccountType', choices: ['prod-act', 'infra', 'cluster', 'data', 'dmz', 'logging', 'security'])
        choice(choices: ['site1','site2'],description: 'Select the environment type ?', name: 'envtype')
        choice(choices: ['prod'], description: 'Select the environment to bootstrap?', name: 'environment')

        choice(name: 'Resource', choices: ['network-vpc', 'network-subnet', 'network-igw', 'network-tgw', 'network-ngw', 'ec2-instance'])
        //string()
    }*/
    stages {
	stage("Install requirements"){
	steps{
		sh ("pip install -r requirements.txt")
		}
	}
        stage("Set Creds"){
		    
            steps{
               
                script{
                    def inputs
                    def tf_cmd = "terraform"
                    def workspace = pwd()
                    def envtest = params.environment
                    def vaultUrl = "http://52.41.11.67:8200"
                    def path_vars = workspace + "/" + params.environment.trim() + "/" + params.service.trim() + "/" + params.envtype.trim()
                    def path = "modules" + "/" + params.resource.trim()
                
                    
		wrap([$class: 'MaskPasswordsBuildWrapper', varPasswordPairs: [[var: 'VaultToken', password: VaultToken], [password: TF_VAR_aws_secret_key]], varMaskRegexes:[]]){
			sh ('set +x source ./setEnv.sh $account_type $VaultToken  $vaultUrl set -x')
        }                                                                                 
        def aws_keys = sh(script: 'python setAcctCred.py -i jenkins -v $VaultToken   -u "http://52.41.11.67:8200" -a $account_type', returnStdout: true ).split("\r?\n")
        println aws_keys[0]
        println aws_keys[1]
        println "---------+++++----------"
        def lines = readFile("./${account_type}.groovy").split("\r?\n") 
        println lines[0]
        println lines[1]


        sh script: "/bin/rm -rf .terraform"
        sh script: "${tf_cmd} init"
        wrap([$class: 'MaskPasswordsBuildWrapper', varPasswordPairs: [[var: 'aws_keys[0]', password: aws_access_key], [var: 'aws_keys[1]', password: aws_secret_key]], varMaskRegexes:[]]){
        sh ('set +x ${tf_cmd} plan -var="vaultToken=${VaultToken}"  -var="aws_secret_key=$aws_access_key" -var="aws_access_key=aws_secret_key" set -x')
        }
        
        }
            }
            }
        /*stage("TF plan") {
            steps{

                sh('terraform init')
                sh ('terraform plan')
            }
        }*/
        }
    }
