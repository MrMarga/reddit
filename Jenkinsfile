pipeline {
    agent any
    stages {
        stage('Code') {
            steps {
                git(
                    url: "git@github.com:MrMarga/reddit.git",
                    branch: "main",
                    changelog: true,
                    poll: true
                )
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