pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS=credentials('dockerhublogin')
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
                        sh 'docker build -t rishabhdevopspareta/my-node-app:latest .'
                        //}
                    }
                 }
            }
         stage('Push Docker Image') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                sh 'docker push rishabhdevopspareta/my-node-app:latest'
            }
        }
        stage('Deploying node app to Kubernetes') {
            steps {
                script {
                    withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'kubernetes', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
    

                    sh ('aws eks update-kubeconfig --region us-east-2 --name node_eks1')
                    sh "kubectl get ns"
                    sh "kubectl apply -f mynodeapp.yaml"
                }
            }
        }
    }
}
}
