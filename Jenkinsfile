def trigger_test_boards(){
    pipeline {
        agent none
        stage('Trigger on Board'){
            parallel{
                  stage("Trigger - Board 1") {
                       steps{
                          echo "Run Test Board-1"
                       }
                   }
                   stage("Trigger - Board 2") {
                        steps {
                            echo "Run Test Board-2"
                        }   
                    }
                    stage("Trigger - Board 3") {
                         steps {
                              echo "Run Test Board 3"
                         }   
                    }   
            }
        }
    }
}

pipeline {
    agent none
    stages {
        stage('Flash Bootloader') {
          agent any
          steps {
               echo "Flash the bootloader"
          }
        }
        stage('Download Package') {
            agent any
            steps {
                echo "Stage to Download the package"
            }
        }
       stage('Flash Package') {
            agent any
            steps {
                echo "Stage to flash the package"
            }
        }
       stage('Enable ADB') {
            agent any
            steps {
                echo "Stage to enable the ADB"
            }
        }
       stage('Initial Settings') {
            agent any
            steps {
                echo "Stage to perform initial settings"
            }
        }
       stage('Home Screen Capture') {
            agent any
            steps {
                echo "Stage to perform home screen capture"
            }
        }
       stage('Run Test'){
                parallel{
                    stage("Run CTS Test") {
                        agent {
                             docker {image 'ubuntu'}
                        }
                        steps{
                             trigger_test_boards()
                        }
                    }
                    stage("Run GTS Test") {
                        agent {
                             docker {image 'ubuntu'}
                        }
                        steps {
                             trigger_test_boards()
                        }   
                    }
                    stage("Run CTS_V Test") {
                        agent {
                             docker {image 'ubuntu'}
                        }
                        steps {
                             trigger_test_boards()
                        }   
                    }
                    stage("Run STS") {
                        agent {
                             docker {image 'ubuntu'}
                        }
                        steps {
                             trigger_test_boards()
                        }   
                    }
                    stage("Run VTS") {
                        agent {
                             docker {image 'ubuntu'}
                        }
                        steps {
                             trigger_test_boards()
                        }   
                    }
               }
        }
        stage('Grab & Collect Report') {
            agent any
            steps {
                echo "Stage to grab and collect the report..."
            }
        }
    }
}
