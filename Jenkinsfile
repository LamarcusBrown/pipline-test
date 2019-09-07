pipeline {
    agent any

    stages {
        stage('Environment Prep') {
            steps {
               sh """
                cd $WORKSPACE 
                mkdir dev
                mkdir test
                """
            }
        }
        stage('Provisioning Infrastructure') {
            steps {
                sh """
                cd $WORKSPACE/dev
                echo "#!/bin/bash" > script.sh
                echo "#piplen script" >> script.sh
                echo "hostname" >> script.sh
                """
            }
        }
        stage('Validating Infrastructure') {
            steps {
                sh """
                ls -al $WORKSPACE/dev
                cat cd $WORKSPACE/dev script.sh
                """
            }
        }
    }
}