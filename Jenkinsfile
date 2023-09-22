pipeline {
    agent any
    stages {
        stage('Code') {
            steps {
                echo"getting code from github"
                git url :"https://github.com/MrMarga/reddit.git",branch: "main"
            }
        }
  

        stage('Build') {
            steps {
                echo "Building the image"
                sh "docker build -t mrmarga/reddit . "
            }
        }
   

        stage('Push to DOcker Hub') {
            steps {
                echo "Pushing the image to docker hub"
                    withCredentials([usernamePassword(CredentialsId:"dockerhub",passwordVariable:"dockerhubPass",usernameVariable:"dockerhubUser")]){
                    sh "docker login -u ${env.dockerhubUser} -p ${env.dockerhubPass}"}
            }
        }
        stage('Deploy') {
            steps {
                echo "Deploying the container"
            }
        }
    }
}
