pipeline {
    agent any
    stages{
        stage("checkout"){
            steps{
                checkout scm
            }
        }
        stage("Build Image"){
            steps{
                sh 'docker build -t my-node .'
            }
        }
                    
    }
}
