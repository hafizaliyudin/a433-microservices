pipline{
    agent any 

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps{
                script {
                    docker build -t todo-app:latest .
                }
            }
        }
        
    }
}