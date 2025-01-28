pipeline {
    agent any
    stages {
        stage('Install Dependencies') {
            steps {
                sh '''
                    sudo apt-get update
                    sudo apt-get install -y python3-pip
                    sudo pip3 install robotframework robotframework-seleniumlibrary
                '''
            }
        }
        stage('Test') {
            steps {
                sh 'robot google.robot'
            }
        }
    }
}