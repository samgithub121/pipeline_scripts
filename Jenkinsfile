import com.cwctravel.hudson.plugins.extended_choice_parameter.ExtendedChoiceParameterDefinition

/*-----------------Multiple choice to select the board numbes-------------------------- */
node {
def multiSelect= new ExtendedChoiceParameterDefinition("Available Boards", 
            "PT_MULTI_SELECT", 
            "Board-1,Board-2,Board-3,Board-4,Board-5,Board-6", 
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
            "Board-1,Board-2,Board-3,Board-4,Board-5,Board-6", 
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
            6, 
            "multiselect", 
            ",") 

   def boardInput = input  id: 'customID', message: 'Kindly select the boards to run the test', ok: 'Proceed', parameters:  [multiSelect]
echo "User Selected Boards are -> "+ boardInput
}

/*------------------------Section to select the associated jobs----------------------------------- */
node {
def multiSelect= new ExtendedChoiceParameterDefinition("Select the Jobs", 
            "PT_MULTI_SELECT", 
            "Flash Bootloader,Download Package,Flash Package,Enable ADB,Initial Settings,Home Screen Capture,Reboot,Factory Reset, Write EeProm", 
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
            "Flash Bootloader,Download Package,Flash Package,Enable ADB,Initial Settings,Home Screen Capture,Reboot,Factory Reset, Write EeProm", 
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
            9, 
            "multiselect", 
            ",") 

   def jobInput = input  id: 'customID', message: 'Kindly select the associated Jobs?', ok: 'Proceed', parameters:  [multiSelect]
echo "User Selected Jobs are ->"+ jobInput
}

/*---------------------Section To Select The TOOLS----------------------------- */
node {
def multiSelect= new ExtendedChoiceParameterDefinition("Select the Tools", 
            "PT_MULTI_SELECT", 
            "CTS,GTS,CTS_V,CTS_GSI,STS,VTS", 
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
            "CTS,GTS,CTS_V,CTS_GSI,STS,VTS", 
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
            6, 
            "multiselect", 
            ",") 

   def toolInput = input  id: 'customID', message: 'Kindly select the tools needed to run?', ok: 'Proceed', parameters:  [multiSelect]
echo "User Selected tools are ->"+ toolInput
}
node {
      echo "User Selected Boards are ->-----"+ boardInput
      echo "User Selected Jobs are ->-------"+ jobInput
      echo "User Selected tools are ->------"+ toolInput      
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
        stage('Factory Reset') {
            agent any
            steps {
                echo "Stage to perform factory reset"
            }
        }
        stage('Reboot') {
            agent any
            steps {
                echo "Stage to perform reboot"
            }
        }
        stage('Write EeProm') {
            agent any
            steps {
                echo "Stage to perform - Write EeProm Values"
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
