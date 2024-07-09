pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh "docker build -t inf335:atividade5-2 ."
                sh "docker run -i inf335:atividade5-2"
            }
        }
    }
}
