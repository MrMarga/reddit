pipeline {
    agent any
    stages {
        stage('Code') {
            steps {
                echo 'Writing Code'
            }
        }
  

        stage('Build') {
            steps {
                echo 'Building the image'
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