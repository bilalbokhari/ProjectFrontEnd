pipeline {
  agent any
  environment {
    registryCredential = 'dockerhub'
  }
  stages {
    stage('Build application code') {
      steps {
        sh 'node server.js'
      }
    }
    stage('Build Docker image') {
      steps {
        sh 'docker build -t bilalbokharee/diceproject01 .'
      }
    }
    stage('Push Docker image to Dockerhub') {
        steps{
            script {
                docker.withRegistry( '', registryCredential ) {
                  sh 'docker push bilalbokharee/diceproject01:Server'
                }
            }
        }
      }
    }
}