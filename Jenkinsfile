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
                bat 'ssh -i "tesst.pem" ubuntu@ec2-174-129-47-54.compute-1.amazonaws.com "cd /var/www/laravel8-watchex && git reset --hard && git pull origin master"'
            }
        }
        stage('Alert') {
            steps {
                echo "Alerting.."
                bat 'ssh -i "tesst.pem" ubuntu@ec2-174-129-47-54.compute-1.amazonaws.com "cd /var/www/laravel8-watchex/chatbot && ./build_success.sh"'
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
    
    post {
        failure {
          echo 'Build thất bại !'
            bat 'ssh -i "tesst.pem" ubuntu@ec2-174-129-47-54.compute-1.amazonaws.com "cd /var/www/laravel8-watchex/chatbot && ./build_fail.sh"'
        }
    }
}