pipeline {
    agent {
        docker { image 'slave' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'python3 --version'
            }
        }
    }
}
