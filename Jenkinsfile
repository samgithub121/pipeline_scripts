pipeline {
    agent any 
    stages {
        stage('Build') { 
            parallel (
                a : {
                    echo "Build Parallel 1"
                },
                b : {
                    echo "Build Parallel 2"    
                }
            )
        }
        stage('Test') { 
            steps {
                echo "Test Stage"
            }
        }
        stage('Deploy') { 
            steps {
                echo "Deploy Stage"
            }
        }
    }
}
