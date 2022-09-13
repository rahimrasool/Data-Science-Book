docker-build:
	docker build -t dsbook_container .


docker-run-jupyter:
	docker run -p 8888:8888 --rm -v $PWD:/home/jovyan/dsbook_test -t dsbook_container


docker-run-terminal:
	docker run --user root --rm -e GRANT_SUDO=yes -v $PWD:/home/jovyan/dsbook_test -it dsbook_container /bin/bash