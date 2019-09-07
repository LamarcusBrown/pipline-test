pipeline {
    agent any

    stages {
        stage('stage1') {
            steps {
                echo 'Iwelcome to stage 1'
            }
        }
        stage('stage2') {
            steps {
                echo '... and now stage 2'
                sh """
                pwd
                echo $WORKSPACE
                """
            }
        }
        stage('stage3') {
            steps {
                echo 'we are in stage 3 now'
            }
        }
        stage('stage4') {
            steps {
                echo 'last stage - stage 4'
            }
        }
    }
}