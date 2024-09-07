pipeline {
    agent any
    environment {
        DOCKER_CREDENTIALS_ID = 'Docker-hub' // Your Docker Hub credentials ID
        DOCKER_IMAGE_NAME = 'rishabhdevopspareta/node' // Docker Hub image name
        DOCKER_TAG = 'latest' // Tag for the image
    }
    stages{
        stage("checkout"){
            steps{
                checkout scm
            }
        }

        stage('Build Image') {
            steps {
                script {
                    //withEnv(["DOCKER_BUILDKIT=0"]) {
                        sh 'docker build -t my-node-app:latest .'
                        //}
                    }
                 }
            }
         stage('Push Docker Image') {
            steps {
                script {
                    withCredentials([string(credentialsId: 'Dockerhub', variable: 'dockerhub')]) {
                    sh 'dcoker login -u rishabhdevopspartea -p ${#Docker9479}'
                    sh 'docker push rishabhdevopspareta/my-node-app:latest'
                    }
                }
            }
        }
    }
}
