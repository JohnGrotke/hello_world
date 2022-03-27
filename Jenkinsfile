node {
    stage ('Clone repository') {
        checkout scm
    }

    stage ('Build image') {
        sh './build.sh'
    }

    stage ('Run image') {
        sh './run.sh'
    }
}