pipeline {
   agent any
   stages {
       stage('Build') {
           steps {
               script {
                   sh 'buildah version'
                   sh 'buildah bud -t fedora-httpd'
                   sh 'buildah --help'
                   sh 'ls -la'
               }
           }
       }
   }
}
