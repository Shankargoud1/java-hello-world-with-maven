pipeline{
    agent any
 

    stages{
        stage('hello world'){
            steps{
             scipt{
                hello.hello()
             }
            }
        }

       stage('git_checkout'){
            steps{
             scipt{
                 checkout_git.checkout_git()
             }
            }
        } 
    }
}