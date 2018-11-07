def awesomeVersion = 'VERISION_NUMBER'

pipeline {
    agent any 
    stages {
        stage('Build') { 
          steps {
            parallel (
                a : {
                    echo "Build Parallel 1"
                },
                b : {
                    echo "Build Parallel 2"    
                }
            )
          }
        }
        stage('Test') { 
            steps {
                echo "Test Stage : ${awesomeVersion}"
            }
        }
        stage('Deploy') { 
            steps {
                echo "Deploy Stage"
            }
        }
    }
}
