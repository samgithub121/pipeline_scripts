pipeline {
    agent any
    stages {
        stage('Back-end') {
            agent {
                echo "This is stage 1"
                docker { image 'maven:3-alpine' }
            }
            steps {
                sh 'mvn --version'
            }
        }
    }
}
