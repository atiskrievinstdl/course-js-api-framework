pipeline {
    agent any
    triggers{ 
        pollSCM('*/1 * * * *') 
    }
    stages {
        stage('build') {
            steps {
                script{
                    build()
                }
            }
        }
    }
}

def build(){
    echo "Building of api-test docker image starting.."
    sh "docker build -t mtararujs/api-tests ."
    
    echo "Pushing image to docker registry.."
    sh "docker push mtararujs/api-tests"
    echo "Building of api-test docker image finished.."
}
