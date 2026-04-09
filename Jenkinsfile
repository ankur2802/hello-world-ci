pipeline {
    agent any
    
    tools {
        jdk 'LocalJDK'
        maven 'LocalMaven' 
    }

    stages {
        stage('Checkout from GitHub') {
            steps {
                echo 'Pulling fresh code from the cloud...'
                // REPLACE THIS URL WITH YOUR ACTUAL GITHUB REPO URL
                git branch: 'main', url: 'https://github.com/ankur2802/hello-world-ci.git'
            }
        }
        
        stage('Build') {
            steps {
                echo 'Compiling the Java code using Maven...'
                bat 'mvn clean package'
            }
        }
        
       stage('Docker Build') {
            steps {
                echo 'Creating the Docker Image...'
                // This creates a "snapshot" of your app called 'my-java-app'
                bat 'docker build -t my-java-app .'
            }
        }
        
        stage('Docker Run') {
            steps {
                echo 'Launching the app inside a Container...'
                // This runs the app inside the "box"
                bat 'docker run --rm my-java-app'
            }
        }
    }
}