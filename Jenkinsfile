pipeline {
    agent {label 'builder'}
    stages {
        stage('Checkout') {
          steps {
            checkout scm
          }
        }
        stage('Stage 1') {
            steps {
                echo 'Hello world!'
            }
        }
        stage('Stage 2') {
            steps {
                echo 'Hello world back!'
            }
        }
        stage('Stage 3') {
            steps {
                echo 'Something!'
            }
        }
        stage('Stage 4') {
            steps {
                echo 'Testing 4!'
            }
        }
    }
}
