pipeline {
    agent any
    stages {
        stage('Code') {
            steps {
                echo'getting code from github'
            }
        }
  

        stage('Build') {
            steps {
                echo 'Building the image'
                sh "docker build -t mrmarga/reddit . "
            }
        }
   

        stage('Push to DOcker Hub') {
            steps {
                echo 'Pushing the image to docker hub'
            }
        }
 

        stage('Deploy') {
            steps {
                echo 'Deploying the container'
            }
        }
    }
}