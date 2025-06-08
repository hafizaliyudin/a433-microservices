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
                    sh 'docker run -dp 3000:3000 --name todo-app \

   -w /app -v "$(pwd):/app" \
   --network todo-app \
   -e MYSQL_HOST=mysql \
   -e MYSQL_USER=root \
   -e MYSQL_PASSWORD=dicoding \
   -e MYSQL_DB=todo-db \
   node:12-alpine \
   sh -c "yarn install && yarn run dev"'
                }
            }
        }
    }
}