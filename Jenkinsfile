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
                       credentialsType: "jenkins"
                       projectName: "dev-demo",
                       region: "ap-south-1"
                   )
               }
           }
       }
   }
}
