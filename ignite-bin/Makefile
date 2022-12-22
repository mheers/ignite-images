ignite-bin:
	docker build -t mheers/ignite-bin .
	docker push mheers/ignite-bin

ignite-get-binary:
	mkdir -p bin
	docker run --rm --entrypoint cat mheers/ignite-bin /usr/local/bin/ignite-spawn > ./bin/ignite-spawn
	docker run --rm --entrypoint cat mheers/ignite-bin /usr/local/bin/ignite > ./bin/ignite
	docker run --rm --entrypoint cat mheers/ignite-bin /usr/local/bin/ignited > ./bin/ignited
	chmod +x ./bin/*

ignite-install: ignite-get-binary
	cp ./bin/* /usr/local/bin/
