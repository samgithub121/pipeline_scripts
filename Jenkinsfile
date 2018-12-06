import com.cwctravel.hudson.plugins.extended_choice_parameter.ExtendedChoiceParameterDefinition

def boardInput
try {
    def multiSelect= new ExtendedChoiceParameterDefinition("Available Boards", 
            "PT_MULTI_SELECT", 
            "B1,B2,B3,B4,B5,B6", 
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
            "B1,B2,B3,B4,B5,B6", 
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

    boardInput  = input  id: 'customID', message: 'Kindly select the boards to run the test', ok: 'Proceed', parameters:  [multiSelect]
} catch(err) { // input false
    echo "Aborted by"
}

node {
    if (boardInput == "B1") {
        // do something
        echo "this was successful"
    } else {
        // do something else
        echo "this was not successful"
        currentBuild.result = 'FAILURE'
    } 
}



/*-----------------Multiple choice to select the board numbes-------------------------- */
node {
def multiSelect= new ExtendedChoiceParameterDefinition("Available Boards", 
            "PT_MULTI_SELECT", 
            "B1,B2,B3,B4,B5,B6", 
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
            "B1,B2,B3,B4,B5,B6", 
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

    def boardInput  = input  id: 'customID', message: 'Kindly select the boards to run the test', ok: 'Proceed', parameters:  [multiSelect]
    echo "User Selected Boards are -> "+ boardInput
}

/*------------------------Section to select the associated jobs----------------------------------- */
node {
def multiSelect= new ExtendedChoiceParameterDefinition("Select the Jobs", 
            "PT_MULTI_SELECT", 
            "Fl Blr,D Pkg,Fl Pkg,E Adb,Ini Set,HSC,Rbt,Ftry Rst, W Eep", 
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
            "Fl Blr,D Pkg,Fl Pkg,E Adb,Ini Set,HSC,Rbt,Ftry Rst, W Eep", 
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
            "C,G,C_V,C_GSI,S,V", 
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
            "C,G,C_V,C_GSI,S,V", 
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

pipeline {
    agent none
    stages {
        stage('Fl Blr') {
          agent any
          steps {
               echo "Fl Blr....."
          }
        }
        stage('D Pkg') {
            agent any
            steps {
                echo "Stage to D Pkg"
            }
        }
       stage('Fl Pkg') {
            agent any
            steps {
                echo "Stage to Fl Pkg"
            }
        }
       stage('E Adb') {
            agent any
            steps {
                echo "Stage to E Adb"
            }
        }
       stage('Ini Set') {
            agent any
            steps {
                echo "Stage to perform Ini Set"
            }
        }
       stage('HSC') {
            agent any
            steps {
                echo "Stage to perform HSC"
            }
        }
        stage('Rbt') {
            agent any
            steps {
                echo "Stage to perform Rbt"
            }
        }
        stage('Ftry Rst') {
            agent any
            steps {
                echo "Stage to perform Ftry Rst"
            }
        }
        stage('W Eep') {
            agent any
            steps {
                echo "Stage to perform - W Eep"
            }
        }
       stage('Run Test'){
                parallel{
                    stage("Run C Test") {
                        agent {
                             docker {image 'ubuntu'}
                        }
                        steps{
                             echo "Step to run C test parallelly on 6 boards"
                        }
                    }
                    stage("Run G Test") {
                        agent {
                             docker {image 'ubuntu'}
                        }
                        steps {
                              echo "Step to run G test parallelly on 6 boards"
                        }   
                    }
                    stage("Run C_V Test") {
                        agent {
                             docker {image 'ubuntu'}
                        }
                        steps {
                             echo "Step to run C_V test parallelly on 6 boards"
                        }   
                    }
                    stage("Run C_GSI Test") {
                        agent {
                             docker {image 'ubuntu'}
                        }
                        steps {
                             echo "Step to run C_GSI test parallelly on 6 boards"
                        }   
                    }
                    stage("Run S") {
                        agent {
                             docker {image 'ubuntu'}
                        }
                        steps {
                             echo "Step to run S test parallelly on 6 boards"
                        }   
                    }
                    stage("Run V") {
                        agent {
                             docker {image 'ubuntu'}
                        }
                        steps {
                             echo "Step to run V test parallelly on 6 boards"
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
