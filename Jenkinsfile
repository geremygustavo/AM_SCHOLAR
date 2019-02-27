pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh './gradle-java-at08-task10/gradlew clean build -p gradle-java-at08-task10'                   
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh './gradle-java-at08-task10/gradlew test -p gradle-java-at08-task10'
                sh './gradle-java-at08-task10/gradlew jacocoTestReport -p gradle-java-at08-task10'   

                // Publish the JUnit test Report
                publishHTML target: [
                    allowMissing: false,
                    alwaysLinkToLastBuild: false,
                    keepAll: true,
                    reportDir: 'gradle-java-at08-task10/build/reports/tests/test',
                    reportFiles: 'index.html',
                    reportName: 'JUnit Report'
                  ]

                // Publish the Java Code Coverage Report
                publishHTML target: [
                    allowMissing: false,
                    alwaysLinkToLastBuild: false,
                    keepAll: true,
                    reportDir: 'gradle-java-at08-task10/build/jacocoHtml',
                    reportFiles: 'index.html',
                    reportName: 'JaCoCo Report'
                  ]                              
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh './gradle-java-at08-task10/gradlew jar -p gradle-java-at08-task10'                
            }
        }
    }

    post {
        always {            
            archiveArtifacts artifacts: 'gradle-java-at08-task10/build/libs/**/*.jar', fingerprint: true
            archiveArtifacts artifacts: 'gradle-java-at08-task10/build/libs/**/*.war', fingerprint: true
            junit 'gradle-java-at08-task10/build/test-results/**/*.xml'
        }
    }
}
