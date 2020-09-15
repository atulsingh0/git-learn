pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git(url: 'git@github.com:atulsingh0/git-learn.git', branch: 'develop', credentialsId: 'github-ssh')
      }
    }

    stage('Build') {
      steps {
        sh '''echo "Hi"
echo "This is me who is learning to write Jenkinsfile"'''
      }
    }

  }
}