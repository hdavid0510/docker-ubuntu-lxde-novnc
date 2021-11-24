pipeline{
	agent any

	environment {
		REGISTRY="hdavid0510/ubuntu-desktop-lxde-vnc"
		REGISTRY_CREDENTIALS='dockerhub-credential'
		IMG_LATEST=''
		IMG_LATEST_TAG="latest"
// 		IMG_VERSION=''
// 		IMG_VERSION_TAG="$BUILD_NUMBER"
// 		IMG_AMD64_BIONIC=''
// 		IMG_AMD64_BIONIC_TAG="amd64-bionic"
// 		IMG_AMD64_FOCAL=''
// 		IMG_AMD64_FOCAL_TAG="amd64-focal"
	}

	stages {

		stage('Build') {
			steps {
				script {
					IMG_LATEST= docker.build REGISTRY + ":$IMG_LATEST_TAG"
				}
			}
		}

		stage('Push') {
			steps {
				script {
					docker.withRegistry('', REGISTRY_CREDENTIALS){
						IMG_LATEST.push()
					}
				}
			}
		}
	}

	post {
		always {
			sh "docker rmi $REGISTRY:$IMG_LATEST_TAG"
// 			sh "docker rmi $REGISTRY:$IMG_VERSION_TAG"
// 			sh "docker rmi $REGISTRY:$IMG_AMD64_BIONIC_TAG"
// 			sh "docker rmi $REGISTRY:$IMG_AMD64_FOCAL_TAG"
		}
	}
}
