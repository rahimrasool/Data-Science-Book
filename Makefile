docker-build:
	docker build -t dsbook_container .


docker-run-jupyter:
	docker run -p 8888:8888 --rm -v $PWD:/home/jovyan/ds_content -t ds_content


docker-run-terminal:
	docker run --user root --rm -e GRANT_SUDO=yes -v $PWD:/home/jovyan/ds_content -it ds_content /bin/bash