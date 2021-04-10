pipeline
{
agent any
stages
{
  stage ('scm checkout')
  {
      steps { git branch: 'master', url: 'https://github.com/prakashk0301/gradle-calculator/'  }
  }

  stage ('run-gradle-command-to-build-and-geneate-artifacts')

  { 
      steps { sh './gradlew clean'
              sh './gradlew assemble'
              sh './gradlew build'
              sh './gradlew jar'
              }
  }
  
  stage ('Call Dockerfile')
  { steps {  sh 'docker build -t pkw0301/gradle-ex:v1 .' } }


}

}
