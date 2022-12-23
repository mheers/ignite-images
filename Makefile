all: ubuntu-base ubuntu-base-docker alpine-base

.PHONY: ubuntu-base
ubuntu-base:
	make -C ubuntu-base

.PHONY: ubuntu-base-docker
ubuntu-base-docker:
	make -C ubuntu-base-docker

.PHONY: ubuntu-base-containerd
ubuntu-base-containerd:
	make -C ubuntu-base-containerd

.PHONY: alpine-base
alpine-base:
	make -C alpine-base

.PHONY: ignite-bin
ignite-bin:
	make -C ignite-bin

.PHONY: ignite-install
ignite-install:
	make -C ignite-bin ignite-install
