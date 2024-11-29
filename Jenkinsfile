pipeline {
    agent {
        node {
            label 'docker-agent'
            }
      }
    triggers {
        pollSCM '*/5 * * * *'
    }
    stages {
        stage('Build') {
            steps {
                echo "Building.."
                sh '''
                ssh -i "tesst.pem" ubuntu@ec2-174-129-47-54.compute-1.amazonaws.com "cd /var/www/laravel8-watchex/chatbot && ./build_success.sh"
                '''
            }
        }
        stage('Alert') {
            steps {
                echo "Alerting.."
                sh '''
                cd bat
                bat alert.bat
                '''
            }
        }
        stage('Deliver') {
            steps {
                echo 'Deliver....'
                sh '''
                echo "doing delivery stuff.."
                '''
            }
        }
    }

    environment {
        // Define your SSH credential ID here
        SSH_CREDENTIALS = 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIB/01qwbcMVxHpHCiU/p2mwPLrGUdhSZgKrB9Rz47yzl hung0@admin'
    }

    post {
        failure {
          echo 'Build thất bại !'
            bat 'ssh -i "tesst.pem" ubuntu@ec2-174-129-47-54.compute-1.amazonaws.com "cd /var/www/laravel8-watchex/chatbot && ./build_fail.sh"'
        }
    }
}
