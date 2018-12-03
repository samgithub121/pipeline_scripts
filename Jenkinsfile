import com.cwctravel.hudson.plugins.extended_choice_parameter.ExtendedChoiceParameterDefinition
def multiSelect= new ExtendedChoiceParameterDefinition("name", 
            "PT_MULTI_SELECT", 
            "blue,green,yellow,blue", 
            "project name",
            "", 
            "",
            "", 
            "", 
            "", 
            "", 
            "", 
            "", 
            "", 
            "", 
            "", 
            "", 
            "", 
            "blue,green,yellow,blue", 
            "", 
            "", 
            "", 
            "", 
            "", 
            "", 
            "", 
            "", 
            false,
            false, 
            3, 
            "multiselect", 
            ",") 
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
                             echo "Step to run CTS test parallelly on 6 boards"
                        }
                    }
                    stage("Run GTS Test") {
                        agent {
                             docker {image 'ubuntu'}
                        }
                        steps {
                              echo "Step to run GTS test parallelly on 6 boards"
                        }   
                    }
                    stage("Run CTS_V Test") {
                        agent {
                             docker {image 'ubuntu'}
                        }
                        steps {
                             echo "Step to run CTS_V test parallelly on 6 boards"
                        }   
                    }
                    stage("Run CTS_GSI Test") {
                        agent {
                             docker {image 'ubuntu'}
                        }
                        steps {
                             echo "Step to run CTS_GSI test parallelly on 6 boards"
                        }   
                    }
                    stage("Run STS") {
                        agent {
                             docker {image 'ubuntu'}
                        }
                        steps {
                             echo "Step to run STS test parallelly on 6 boards"
                        }   
                    }
                    stage("Run VTS") {
                        agent {
                             docker {image 'ubuntu'}
                        }
                        steps {
                             echo "Step to run VTS test parallelly on 6 boards"
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
