pipeline {
   agent any
   stages {
       stage('code') {
           steps {
               script {
                   sh 'ls -la'
               }
           }
       }
       stage('build') {
           steps {
               script {
                   awsCodeBuild(
                       projectName: "dev-demo",
                       credentialsType: 'keys',
                       region: "ap-south-1",
                       sourceControlType: 'jenkins'
                   )
               }
           }
       }
       stage('deploy') {
           steps {
               script {
                   awsCodeBuild(
                       projectName: "dev-demo",
                       credentialsType: 'keys',
                       region: "ap-south-1",
                       sourceControlType: 'jenkins'
                   )
               }
           }
       }
   }
}
