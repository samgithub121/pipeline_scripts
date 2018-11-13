pipeline {
    agent {
        docker { image 'node:ubuntu' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'python3 --version'
            }
        }
    }
}
