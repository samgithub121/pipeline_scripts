def awesomeVersion = 'VERISION_NUMBER'
def a = '5'
def b = '2'

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
                script{
                    if (${a}.equals(${b})){
                        echo "${a} is greater than ${b}"
                    } else {
                        echo "${a} is not greater than ${b}"
                    }
                }
            }
        }
    }
}
