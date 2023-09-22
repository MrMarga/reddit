pipeline {
    agent any
    environment{DOCKERHUB_CREDENTIALS = credentials('dockerhublogin')}

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
                    sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                    sh 'docker push mrmarga/reddit'
                     }
            }

    post {
             always {
                    sh 'docker logout'
                    }
        }
        stage('Deploy') {
            steps {
                echo "Deploying the container"
            }
        }
    }
}
