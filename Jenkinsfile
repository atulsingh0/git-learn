pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git(url: 'git@github.com:atulsingh0/git-learn.git', branch: 'develop', credentialsId: 'github-ssh')
      }
    }

  }
}