pipeline {
    agent any
 node {
    def app
    stages {
        stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */
            steps {
                echo "Inside building image"
            }
            app = docker.build("getintodevops/hellonode")
        }
       stage('Test image') {
        /* Ideally, we would run a test framework against our image.
         * For this example, we're using a Volkswagen-type approach ;-) */
            steps {
                echo "Inside test image"
            }
            app.inside {
                sh 'echo "Tests passed"'
            }
        }
    }
 }
}
