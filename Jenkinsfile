pipeline {
    agent any
parameters: {
    string(defaultValue: 'None', description: 'vault', name: 'vaultToken')
    choice(choices: ['prod-act', 'log-act'], description: 'account type', name: 'account_type')
}
Stages{
    stage("Bootstrapping") {
        steps {
            sh scripts: "echo " + parms.vaultToken + " -a " parms.account_type
        }
    }
    
}
    
}
