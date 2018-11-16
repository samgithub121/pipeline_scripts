pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                echo "Testing the docker file....."
                sh 'node --version'
                sh 'svn --version'
            }
        }
    }
}
