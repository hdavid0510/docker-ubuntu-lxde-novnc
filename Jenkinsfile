pipeline{
	agent any

	environment {
		IMAGE="hdavid0510/ubuntu-desktop-lxde-vnc"
		REGISTRY_CREDENTIALS='dockerhub-credential'
		IMAGE_TAG="amd64-bionic"
 		IMAGE_BUILDING=''
	}

	stages {

		stage('Build') {
			steps {
				script {
					IMAGE_BUILDING= docker.build IMAGE+":$IMAGE_TAG"
				}
			}
		}

		stage('Push') {
			steps {
				script {
					docker.withRegistry('', REGISTRY_CREDENTIALS){
						IMAGE_BUILDING.push()
					}
				}
			}
		}
	}

	post {
		always {
			sh "docker rmi $IMAGE:$IMAGE_TAG"
		}
	}
}