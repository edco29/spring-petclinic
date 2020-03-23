@Library('jenkins-sharedlib@master')
import sharedlibs.jenkinsfileUtil

def utils = new jenkinsfileUtil(steps, this)


  node {
    stage('Preparation') {

      step([$class: 'WsCleanup'])
      checkout scm
    }
    
    stage('Build & U.Test') { utils.buildMaven()
 }

     // stage('Deploy') { utils.deployMaven()
// }

    
}


