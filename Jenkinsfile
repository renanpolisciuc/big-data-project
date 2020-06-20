def service_1_image
def version_service_1
pipeline {
    agent any

    stages {
        stage('Pre-build') {
            steps {
                script {
                    version_service_1 = "1.0.0"
                }
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
                script {
                    dir('./applications/services/service-1') {
                        service_1_image = docker.build("rpolisciuc/service-1")
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    docker.withRegistry('', 'dockerhub-credentials') {
                        service_1_image.push(version_service_1)
                    }
                }
            }
        }
    }
}