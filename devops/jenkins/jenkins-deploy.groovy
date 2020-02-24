@Library('jenkins-sharedlib@master')
import sharedlibs.jenkinsfileUtil

def utils = new jenkinsfileUtil(steps, this)


  node {
    stage('Preparation') {
      //utils.notifyByMail('START', recipients)
      checkout scm
      //utils.prepare()
      //Setup parameters
     // env.project = "${project}"
    }
    
    stage('Build & U.Test') { utils.buildMaven()
 }

}


