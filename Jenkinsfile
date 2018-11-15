#!/bin/bash
pipeline {
    agent none 
    stages {
        stage('Start') {
            agent { docker 'maven:3-alpine' } 
            steps {
                echo 'Hello, Maven'
               // sh 'mvn --version'
            }
        }
    }
}
