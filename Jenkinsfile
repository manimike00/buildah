pipeline {
   agent any
   stages {
       stage('Build') {
           steps {
               script {
                   sh 'buildah version'
                   sh 'buildsh --help'
                   sh 'ls -la'
               }
           }
       }
   }
}
