pipeline {
    agent any

    environment {
        registry = '643099829845.dkr.ecr.us-east-1.amazonaws.com/node_backend'
        registryCredential = 'Jenkins-ecr'
        dockerImage = ''
    }
    stages {
        stage ('Checkout'){
            steps{
                git branch: 'main', url: 'https://github.com/dafinours/node_backend.git'
            }
        }

        stage ('Install dependencies'){
            steps {
                sh 'npm install'
            }
        }
        stage ('Build docker container') {
            steps{
                script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
        stage('Push Image to ECR') {
            steps {
                script {
                    docker.withRegistry("https://"+registry, "ecr:us-east-1:"+registryCredential){
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
