pipeline {
    agent any
parameters {

    string(defaultValue: 'None', description: 'vault', name: 'vaultToken')
    choice(choices: ['prod-act', 'log-act'], description: 'account type', name: 'account_type',)
    choice(choices: ['one', 'two', 'three'], description: ' fasdfasdfad', name: 'CHOICES', )
}
stages {
    stage("Bootstrapping") {
        steps {
            sh ("echo " + parms.vaultToken + " -a " parms.account_type)
        }
    }
    
}
    
}
