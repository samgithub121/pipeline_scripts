def awesomeVersion = 'VERISION_NUMBER'
def a = 5
def b = 2
def value_list = ['a','b','c']

def abc(){
    echo "This is to test a function..." 
}

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
        post{
            allways {
                echo "I will always say hello..."
            }
        }
        stage('Deploy') { 
            steps {
                script{
                    if ("${a}" > "${b}"){
                        echo "${a} is greater than ${b}"
                    } else {
                        echo "${a} is not greater than ${b}"
                    }
                }
            }
        }
        stage('Execute') { 
            steps {
               script{
                    for (int i = 0; i < value_list.size(); i++) {
                            echo "Hello ${value_list[i]}"
                    }
               }
            }
        }
        stage('Testing Function') { 
            steps {
                 abc()
            }
        }
    }
}
