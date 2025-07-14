pipeline {
    agent {
        docker {
            image 'python:3.8'
        }
    }

    stages {
        stage('Install Dependencies') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }

        stage('Run Flask App') {
            steps {
                sh 'nohup python app.py &'
                echo 'Flask app started'
            }
        }
    }
}
