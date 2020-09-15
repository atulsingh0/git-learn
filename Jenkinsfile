pipeline {
  agent any

parameters {
  choice choices: ['master', 'develop'], description: '', name: 'BRANCH'
}

  stages {
    stage('Checkout') {
      steps {
        git(url: 'git@github.com:atulsingh0/git-learn.git', branch: "${params.BRANCH}", credentialsId: 'github-ssh')
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