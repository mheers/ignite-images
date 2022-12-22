UBUNTU_BASE_IMAGE_NAME = mheers/ignite-ubuntu-base:v1.0.5

ubuntu-base:
	docker build --no-cache -f Dockerfile -t ${UBUNTU_BASE_IMAGE_NAME} .
	docker push ${UBUNTU_BASE_IMAGE_NAME}
