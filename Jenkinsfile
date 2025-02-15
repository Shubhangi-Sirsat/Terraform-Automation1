pipeline{
    agent any
    stages{
        stage('cloning github repo'){
        steps{
            checkout([$class: 'GitSCM',
                    branches: [[name: '*/main']],
                    doGenerateSubmoduleConfigurations: false,
                    extensions: [[$class: 'CheckoutOption', timeout: 10]],  // Set timeout to 10 seconds
                    submoduleCfg: [],
                    userRemoteConfigs: [[url: 'https://github.com/Shubhangi-Sirsat/Terraform-Automation1.git']]
                ])
           // checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Shubhangi-Sirsat/Terraform-Automation1.git']])
        }
    }

    stage("terraform init"){

        steps{
            sh("terraform init -reconfigure")
        }
    }
    stage("terraform plan"){
    steps{
        sh("terraform plan")
    }
}

stage("Action"){
    steps{
        echo "Terraform action is --> ${action}"
        sh('terraform ${action} --auto-approve')
    }
}
}
}
