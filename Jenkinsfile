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
        
        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run -d -p 3000:3000 --name todo-app todo-app:latest'
                }
            }
        }
    }
}