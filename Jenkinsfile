pipeline {
    agent any

    stages {
        stage('Environment Prep') {
            steps {
               sh """
                cd $WORKSPACE 
                mkdir -p dev
                mkdir -p test
                hostnamectl
                """
            }
        }
        stage('Provisioning Infrastructure') {
            steps {
                sh """
                echo "building initial script"
                cd $WORKSPACE/dev
                echo "#!/bin/bash" > script.sh
                echo "#piplen script" >> script.sh
                echo hostname >> script.sh
                cat script.sh
                """
            }
        }
        stage('Validating Infrastructure') {
            steps {
                sh """
                chmod +x $WORKSPACE/dev/script.sh
                /$WORKSPACE/dev/script.sh
                date
                """
            }
        }
    }
}