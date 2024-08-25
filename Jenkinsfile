pipeline {

    agent any
    
    environment {
        PASS = credentials('registry-pass') 
    }

    stages {

        stage('Build') {
            steps {
                sh '''
                    ./scripts/build/build.sh

                '''
            }

            /*#post {
               # success {
              #     archiveArtifacts artifacts: 'java-app/target/*.jar', fingerprint: true
             #   }
            #}*/
        }

        stage('Test') {
            steps {
                sh './scripts/unit_test/phpunit_tests.sh'
            }

            /* post {
             #   always {
              #      junit 'java-app/target/surefire-reports/*.xml'
               # }
           # } */
        }

        stage('Push') {
            steps {
                sh './scripts/push/pushimage.sh'
            }
        }

        stage('Deploy') {
            steps {
                sh './scripts/deploy/deploy.sh'
            }
        }
    }
}
