


///var/lib/jenkins/workspace/infra-tf-pip/terraformpull



pipeline {
    agent any // Specifies where the pipeline runs
    stages {
        stage('pull') {
            steps {
                echo "11111"
                sh "whoami"
                sh "pwd"
                sh 'git pull https://github.com/mayur-z/terraformpull.git' 
                // Commands to build the software
              //  sh 'cd /var/lib/jenkins/workspace/infra-tf-pip/terraformpull'
               
            }
        }
        stage('Test') {
            steps {
              echo "22222"
                // Commands to run tests
                sh 'terraform init'
                sh 'terraform fmt'
                sh 'terraform validate'
                sh 'terraform plan'
            }
        }
        stage('Deploy') {
            steps {
              echo "33333"
                // Commands to deploy
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
