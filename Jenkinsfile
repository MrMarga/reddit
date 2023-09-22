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
                sh "docker build -t reddit . "
            }
        }
   
        
        stage('Push to Docker Hub') {
            steps {
                echo "Pushing the image to docker hub"
                    sh "docker tag reddit $DOCKERHUB_CREDENTIALS_USR/reddit:latest"
                    sh "echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin"
                    sh "docker push $$DOCKERHUB_CREDENTIALS_USR/reddit:latest"
                     }
            }

        stage('Deploy') {
            steps {
                echo "Deploying the container"
                sh "docker run -d -p 8000:8000 mrmarga/reddit:latest " 
            }
        }
    }
}
