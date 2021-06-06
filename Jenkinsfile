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
                       region: "ap-south-1"
                   )
               }
           }
       }
   }
}
