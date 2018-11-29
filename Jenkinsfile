pipeline {
    agent any
    stages {
        stage('Flash Bootloader') {
          steps {
               echo "Flash the bootloader"
          }
        }
        stage('Download Package') {
            steps {
                echo "Stage to Download the package"
            }
        }
       stage('Flash Package') {
            steps {
                echo "Stage to flash the package"
            }
        }
       stage('Enable ADB') {
            steps {
                echo "Stage to enable the ADB"
            }
        }
       stage('Initial Settings') {
            steps {
                echo "Stage to perform initial settings"
            }
        }
       stage('Home Screen Capture') {
            steps {
                echo "Stage to perform home screen capture"
            }
        }
       stage('Run Test'){
            steps {
                echo "Stage to run the test[CTS/GTS/CTS_V/CTS_GSI/STS/VTS]"
            }
        }
       stage('Grab & Upload Results'){
            steps {
                echo "Stage to Grab & Upload Results"
            }
        }
    }
}
