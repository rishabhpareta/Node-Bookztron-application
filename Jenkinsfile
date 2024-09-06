pipeline {
    agent any
    stages {
        stage("checkout") {
            steps{
                checkout scm
            }
        }
       
    stages {
        stage('Build Image') {
            steps {
                script {
                    withEnv(["DOCKER_BUILDKIT=1"]) {
                        sh 'docker build -t my-node-app:latest .'
                        }
                    }
                 }
            }
         }

    }
}
