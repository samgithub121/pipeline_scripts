pipeline {
    agent none 
    stages {
        stage('Start') {
            agent { docker 'maven:3-alpine' } 
            steps {
                echo 'Hello, Maven'
               // sh 'mvn --version'
            }
        }
        stage('Stop') {
            agent { docker 'openjdk:8-jre' } 
            steps {
                echo 'Hello, JDK'
               // sh 'java -version'
            }
        }
    }
}
