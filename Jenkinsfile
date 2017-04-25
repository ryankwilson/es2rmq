node("docker") {
    docker.withRegistry('ryankwilson', 'ryankwilson') {
    
        git url: "https://github.com/ryankwilson/es2rmq.git", credentialsId: 'ryankwilson'
    
        sh "git rev-parse HEAD > .git/commit-id"
        def commit_id = readFile('.git/commit-id').trim()
        println commit_id
    
        stage "build"
        def app = docker.build "es2rmq"
    
        stage "publish"
        app.push 'master'
        app.push "${commit_id}"
    }
}
