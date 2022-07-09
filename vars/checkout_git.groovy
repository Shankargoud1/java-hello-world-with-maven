def checkout_git(String repo) {
    
    echo "this is checking out git code."
         git credentialsId: 'first', url: "git@github.com:Shankardevops1/${repo}.git"
}

return this
