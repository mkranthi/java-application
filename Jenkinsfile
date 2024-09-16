pipeline {
    agent any 
    stages {
        stage ('checkout') {
            steps {
                git branch: 'develop', url: 'https://github.com/mkranthi/java-application.git'
            }
        }
        stage('Build with Maven') {
            steps {
                sh 'mvn -f my-app/pom.xml clean compile package'
            }
        }
        stage('build image from Dockerfile') {
            steps {
                sh 'docker build -t my-java-app .'
            }
        }
        stage('tag the image') {
            steps {
                sh 'docker tag my-java-app kmannedev/my-java-app'
                
                sh 'docker push kmannedev/my-java-app'
            }
        }
        stage('kubectl ') {
            steps {
                sh 'kubectl create -f deployment.yaml'
            }
        }
    }
}
