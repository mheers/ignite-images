UBUNTU_BASE_CONTAINERD_IMAGE_NAME = mheers/ignite-ubuntu-base-containerd:v1.0.5

ubuntu-base-containerd:
	docker build --no-cache -f Dockerfile -t ${UBUNTU_BASE_CONTAINERD_IMAGE_NAME} .
	docker push ${UBUNTU_BASE_CONTAINERD_IMAGE_NAME}
