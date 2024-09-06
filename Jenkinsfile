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
                    withEnv(["DOCKER_BUILDKIT=0"]) {
                        sh 'docker build -t my-node-app:latest .'
                        }
                    }
                 }
            }
         
    }
}
