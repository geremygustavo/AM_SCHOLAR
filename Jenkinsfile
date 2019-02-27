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
                sh './gradle-java-at08-task10/gradlew check -p gradle-java-at08-task10'
                sh './gradle-java-at08-task10/gradlew jacocoTestReport -p gradle-java-at08-task10'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh './gradle-java-at08-task10/gradlew jar -p gradle-java-at08-task10'
            }
        }
        post {
        always {
            archiveArtifacts artifacts: 'build/libs/**/*.jar', fingerprint: true
            junit 'build/reports/**/*.xml'
        }
    }
    }
}
