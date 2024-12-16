pipeline {
    agent any
    tools {
        maven "Maven_Home"
        }
    stages {
        stage('Checkout') {                       
            steps{
            git branch: 'main', credentialsId: 'Git-ID', url: 'https://github.com/Shubham4676/HelloServlet.git'
                echo 'Checkout Success'
            }
        }
        stage('MavenBuild') {
            steps{
            sh 'mvn clean install'
                echo 'Build Success'
            }
        }
        
        stage('Deploy') {
            steps{
            sshagent(['deploy-user']) {
            
			sh "scp -o StrictHostKeyChecking=no /var/lib/jenkins/workspace/job-2/target/helloworld.war ec2-user@44.201.210.144:/opt/apache-tomcat-9.0.98/webapps"
			    echo 'Deploying Success' 
                     }
            }
        }
    
	}	
}
