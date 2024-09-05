pipeline {
    agent any
    stages{
        stage("checkout"){
            steps{
                checkout scm
            }
        }
                    
        stage('Build'){
            steps{
                script{
                    withDockerRegistry {
                    sh "docker build -t rishabhdevopspareta/node:tag123"
                    sh "dcoker push"
                    }
                    }
                
            }
        }
    }
}
