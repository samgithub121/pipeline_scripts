import com.cwctravel.hudson.plugins.extended_choice_parameter.ExtendedChoiceParameterDefinition

def executeOnBoards(String boardInput, String message)
{     
      if (boardInput.contains("B1")){
            echo "B1 board is running for job ${message}"
      }
      if (boardInput.contains("B2")){
               echo "B2 board is running for job ${message}"
      }
      if (boardInput.contains("B3")){
               echo "B3 board is running for job ${message}"
      }
      if (boardInput.contains("B4")){
               echo "B4 board is running for job ${message}"
      }
      if (boardInput.contains("B5")){
               echo "B5 board is running for job ${message}"
      }
      if (boardInput.contains("B6")){
               echo "B6 board is running for job ${message}"
      }
}

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
    echo "Board Input datas - >" +boardInput
} catch(err) { // input false
    echo "Aborted by"
}

/*------------------------Section to select the associated jobs----------------------------------- */
def jobInput
try {
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

   jobInput = input  id: 'customID', message: 'Kindly select the associated Jobs?', ok: 'Proceed', parameters:  [multiSelect]
   echo "Job Input datas - >" +jobInput
} catch(err) { // input false
    echo "Aborted by"
}

/*---------------------Section To Select The TOOLS----------------------------- */
def toolInput
try {
def multiSelect= new ExtendedChoiceParameterDefinition("Select the Tools", 
            "PT_MULTI_SELECT", 
            "CT,GT,C_V,C_GSI,ST,VT", 
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
            "CT,GT,C_V,C_GSI,ST,VT", 
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

   toolInput = input  id: 'customID', message: 'Kindly select the tools needed to run?', ok: 'Proceed', parameters:  [multiSelect]
   echo "Tool Input datas - >" +toolInput
}catch(err) { // input false
    echo "Aborted by"
}


pipeline {
    agent none
    stages {
        stage('Fl Blr') {
          agent any
          when {
             expression { jobInput.contains("Fl Blr") }
          }
          steps {
               echo "Fl Blr....."
               executeOnBoards(boardInput,"Fl Blr")
          }
        }
        stage('D Pkg') {
            agent any
            when {
                expression { jobInput.contains("D Pkg") }
            }
            steps {
                echo "Stage to D Pkg"
            }
        }
       stage('Fl Pkg') {
            agent any
            when {
                expression { jobInput.contains("Fl Pkg") }
            }
            steps {
                echo "Stage to Fl Pkg"
                executeOnBoards(boardInput, "Fl Pkg")
            }
        }
       stage('E Adb') {
            agent any
            when {
                expression { jobInput.contains("E Adb") }
            }
            steps {
                echo "Stage to E Adb"
                executeOnBoards(boardInput, "E Adb")
            }
        }
       stage('Ini Set') {
            agent any
            when {
                expression { jobInput.contains("Ini Set") }
            }
            steps {
                echo "Stage to perform Ini Set"
                executeOnBoards(boardInput, "Ini Set")
            }
        }
       stage('HSC') {
            agent any
            when {
                expression { jobInput.contains("HSC") }
            }
            steps {
                  script {
                        if (boardInput.contains("B1")){
                            echo "HSC on  B1"
                            executeOnBoards("B1", "HSC")
                        }
                        else{
                              if (boardInput.contains("B2")){
                                  echo "HSC on  B2"
                                  executeOnBoards("B2", "HSC")
                              }
                              else{
                                    if (boardInput.contains("B3")){
                                          echo "HSC on  B3"
                                          executeOnBoards("B3", "HSC")
                                    }
                                    else{
                                         if (boardInput.contains("B4")){
                                            echo "HSC on  B4"
                                            executeOnBoards("B4", "HSC")
                                         }
                                         else{
                                              if (boardInput.contains("B5")){
                                                echo "HSC on  B5"
                                                executeOnBoards("B5", "HSC")
                                              }
                                              else{
                                                   if (boardInput.contains("B6")){
                                                      echo "HSC on  B6"
                                                      executeOnBoards("B6", "HSC")
                                                   }
                                               }
                                         }
                                    }
                              }
                        }
                  }
            }
        }
        stage('Rbt') {
            agent any
            when {
                expression { jobInput.contains("Rbt") }
            }
            steps {
                echo "Stage to perform Rbt"
                executeOnBoards(boardInput, "Rbt")
            }
        }
        stage('Ftry Rst') {
            agent any
            when {
                expression { jobInput.contains("Ftry Rst") }
            }
            steps {
                echo "Stage to perform Ftry Rst"
                executeOnBoards(boardInput, "Ftry Rst")
            }
        }
        stage('W Eep') {
            agent any
            when {
                expression { jobInput.contains("W Eep") }
            }
            steps {
                echo "Stage to perform - W Eep"
                executeOnBoards(boardInput, "W Eep")
            }
        }
       stage('Run Test'){
                parallel{
                    stage("Run CT Test") {
                        agent {
                             docker {image 'ubuntu'}
                        }
                        when {
                            expression { toolInput.contains("CT") }
                        }
                        steps{
                             echo "Step to run C test parallelly on 6 boards"
                             executeOnBoards(boardInput, "CT")
                        }
                    }
                    stage("Run GT Test") {
                        agent {
                             docker {image 'ubuntu'}
                        }
                        when {
                            expression { toolInput.contains("GT") }
                        }
                        steps {
                              echo "Step to run G test parallelly on 6 boards"
                              executeOnBoards(boardInput, "GT")
                        }   
                    }
                    stage("Run C_V Test") {
                        agent {
                             docker {image 'ubuntu'}
                        }
                        when {
                            expression { toolInput.contains("C_V") }
                        }
                        steps {
                             echo "Step to run C_V test parallelly on 6 boards"
                             executeOnBoards(boardInput, "C_V")
                        }   
                    }
                    stage("Run C_GSI Test") {
                        agent {
                             docker {image 'ubuntu'}
                        }
                        when {
                            expression { toolInput.contains("C_GSI") }
                        }
                        steps {
                             echo "Step to run C_GSI test parallelly on 6 boards"
                             executeOnBoards(boardInput, "C_GSI")
                        }   
                    }
                    stage("Run ST") {
                        agent {
                             docker {image 'ubuntu'}
                        }
                        when {
                            expression { toolInput.contains("ST") }
                        }
                        steps {
                             echo "Step to run ST test parallelly on 6 boards"
                             executeOnBoards(boardInput, "ST")
                        }   
                    }
                    stage("Run VT") {
                        agent {
                             docker {image 'ubuntu'}
                        }
                        when {
                            expression { toolInput.contains("VT") }
                        }
                        steps {
                             echo "Step to run V test parallelly on 6 boards"
                             executeOnBoards(boardInput, "VT")
                        }   
                    }
               }
        }
        stage('Grab & Collect Report') {
            agent any
            steps {
                echo "Stage to grab and collect the report..."
                executeOnBoards(boardInput, "Grab Report")
            }
        }
    }
}
