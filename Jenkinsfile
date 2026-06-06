pipeline {
    agent any
    triggers{ 
        pollSCM('*/1 * * * *') 
    }
    stages {
        stage('build') {
	    when{
	    	anyOf{
		    changeset "tests"
		    changeset "package.json"
		    changeset "config.js"
		}
	    }
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
    sh "docker build -t atiskrievinstdl/api-tests ."
    
    echo "Pushing image to docker registry.."
    sh "docker push atiskrievinstdl/api-tests"
    echo "Building of api-test docker image finished.."
}
