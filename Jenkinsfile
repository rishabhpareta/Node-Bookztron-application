pipeline {
    agent any
    
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
                    sh 'docker login -u rishabhdevopspareta -p ${#Docker9479}'
}  
                    sh 'docker push rishabhdevopspareta/my-node-app:latest'
                    
                }
            }
        }
    }
}
