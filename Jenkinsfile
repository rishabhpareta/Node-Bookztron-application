pipeline {
    agent any
    stages{
        stage("checkout"){
            steps{
                checkout scm
            }
        }

        stage("test"){
            steps{
                sh 'sudo apt npm install'
                sh 'npm test'
            }
        }

        stage("build"){
            steps{
                sh 'mpm run build'
            }
        }
    
    }
}
