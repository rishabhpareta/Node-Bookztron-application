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
                sh 'apt install npm'
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
