pipeline {
    agent {
        node {
            label 'maven_pod'}
    }
    stages {
        stage('Check Maven') {
            steps {
                container('maven') {
                    sh 'mvn --version'
                    sh 'ls -l /root/.m2/repository'
                }
            }
        }
    }
}
