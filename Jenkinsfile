def microservice_app_image
def version
pipeline {
    agent any

    stages {
        stage('Pre-build') {
            steps {
                script {
                    version = sh(returnStdout: true, script: 'git rev-parse --short=7 HEAD').trim()
                }
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
                script {
                    dir('./applications/microservice-app') {
                        microservice_app_image = docker.build("rpolisciuc/microservice-app")
                    }
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    dir('./applications/microservice-app') {
                        microservice_app_image.inside {
                            sh 'mvn test'
                        }
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    docker.withRegistry('', 'dockerhub-credentials') {
                        microservice_app_image.push(version)
                    }
                }
            }
        }
    }
}