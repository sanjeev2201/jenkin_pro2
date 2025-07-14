pipeline {
    agent any

    environment {
        FLASK_ENV = 'development'
    }

    stages {
        stage('Clone Repo') {
            steps {
                echo 'Repo already cloned by Jenkins from GitHub'
                sh 'ls -la'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }

        // stage('Run Tests') {
        //     steps {
        //         sh 'python -m unittest discover -s tests'
        //     }
        // }

        stage('Run Flask App') {
            steps {
                sh 'nohup python app.py &'
                echo 'Flask app started!'
            }
        }
    }
}

