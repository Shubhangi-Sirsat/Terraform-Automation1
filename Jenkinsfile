pipeline{
    agent any
    stages{

        stage('Installing Git'){
        steps{

            steps{
                sh("sudo yum update –y")
            sh("sudo yum upgrade")
            sh("sudo yum install java-17-amazon-corretto -y")
            sh("sudo yum install git -y")
        }
       }
        stage('cloning github repo'){
        steps{
          
           checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Shubhangi-Sirsat/Terraform-Automation1.git']])
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
