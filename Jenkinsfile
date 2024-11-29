pipeline {
    agent {
        node {
            label 'windows'
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
                cd bat
                bat build.bat
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

    post {
        failure {
          echo 'Build thất bại !'
            bat 'ssh -i "tesst.pem" ubuntu@ec2-174-129-47-54.compute-1.amazonaws.com "cd /var/www/laravel8-watchex/chatbot && ./build_fail.sh"'
        }
    }
}
