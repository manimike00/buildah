pipeline {
   agent any
   stages {
       stage('code') {
           steps {
               script {
                   sh 'ls -la'
                   sh 'cp appspec.yaml appspec.DgpECS-dev-zikzuk-cluster-dev-nginx.yml'
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
               step([$class: 'AWSCodeDeployPublisher', 
                 applicationName: 'AppECS-dev-zikzuk-cluster-dev-nginx', 
                 deploymentGroupAppspec: true, 
                 deploymentGroupName: 'DgpECS-dev-zikzuk-cluster-dev-nginx',    //PROJECT_NAME
                 deploymentMethod: 'ecs', 
                 includes: '**', 
                 proxyHost: '', 
                 proxyPort: 0, 
                 region: 'ap-south-1', 
                 s3bucket: 'zikzuk-codebuild', 
                 s3prefix: 'demo',    //PROJECT_NAME
                 waitForCompletion: false]
               )
           }
       }
   }
}
