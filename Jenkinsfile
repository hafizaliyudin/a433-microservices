pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('todo-app:latest')
                    docker images
                }
            }
        }

        stage('show image  docker'){
            steps {
                script{
                    def images = sh(script: 'docker images', returnStdout: true).trim()
                    echo "Docker Images:\n${images}"
                }
            }
        }
    }
}