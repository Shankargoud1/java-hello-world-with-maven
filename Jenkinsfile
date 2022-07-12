 @Library('myLibrary') _
pipeline {
    agent any
    tools {
        maven "Maven"
    }
    stages {
        
        stage('Hello World') {
            steps {
                script 
                {
                    hello.hello()
                }
            }
        }

        stage('Checkout code from Git') {
            steps {
                
                   parallel (
                "1": {dir("java-hello-world-with-maven"){script {checkout_git.checkout_git("java-hello-world-with-maven")}}},
                "2": {dir("sparkjava-war-example"){script {checkout_git.checkout_git("sparkjava-war-example")}}}
                )
             
        }                                
        }

        stage('Trigger AWS Code Build') {
            steps {
                dir("java-hello-world-with-maven")          
                script {
                  
                    awscodebuild.awscodebuild("java-project-2")
                }
             }
        }
            
    }
    
                   

post {
        
        
        success {
             //sh 'echo "This Build is succesfull." | mailx -vvv -s "Build Status" shankargajula0811@gmail.com'
             sh 'echo "Hi, Build is successful. Please check the below logs for the same." | mailx -vvv -s "Build logs for ${JOB_NAME}" -a /var/lib/jenkins/jobs/${JOB_NAME}/builds/${BUILD_NUMBER}/log "shankargajula0811@gmail.com"'
             //emailext attachLog: true, body: 'This is My test mail', subject: 'Test Mail', to: 'shankargajula0811@gmail.com'
             }
        failure {
            sh 'echo "Hi, Build is Failure. Please check the below logs for the same." | mailx -vvv -s "Build logs for ${JOB_NAME}" -a /var/lib/jenkins/jobs/${JOB_NAME}/builds/${BUILD_NUMBER}/log "shankargajula0811@gmail.com"'
             //sh 'echo "This Build is Failed." | mailx -vvv -s "Build Status" shankargajula0811@gmail.com'
             }
             
    
    }
}

