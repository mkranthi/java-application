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
                sh 'mvn clean package'
            }
        }
        stage('build image from Dockerfile') {
            steps {
                sh 'docker build -t java-imageversion1 .'
            }
        }
        stage('tag the image') {
            steps {
                sh 'docker tag javaimageversion1 kmannedev/javaimageversion1:v1.0'
            }
        }
        stage('kubectl ') {
            steps {
                sh 'kubectl create -f deployment.yaml'
            }
        }
    }
}
