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
                   AWSCodeDeployPublisher(
                       applicationName: "AppECS-dev-zikzuk-cluster-dev-nginx",
                       deploymentGroupName: 'DgpECS-dev-zikzuk-cluster-dev-nginx',
                       region: "ap-south-1",
                       deploymentConfig: 'create-deployment.json',
                       deploymentGroupAppspec: 'appspec.yaml'
                   )
               }
           }
       }
   }
}
