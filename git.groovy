 def checkout_git() {
    
    echo "checking out git code"
   git credentialsId: 'githubaccess', url: 'git@github.com:NareshThanduGit/java-hello-world-with-maven.git'    

}

return this
