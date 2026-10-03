SHELL_COMMAND = bash

docker-ubuntu:
	docker build -t project-example-ubuntu ./platform/ubuntu

shell-ubuntu: docker-ubuntu
	docker run -it --rm -v ${CURDIR}:${CURDIR} -w ${CURDIR} project-example-ubuntu ${SHELL_COMMAND}

ubuntu:
	$(MAKE) shell-ubuntu SHELL_COMMAND='./platform/ubuntu/build.sh'

docker-mingw:
	docker build -t project-example-mingw ./platform/mingw

shell-mingw: docker-mingw
	docker run -it --rm -v ${CURDIR}:${CURDIR} -w ${CURDIR} project-example-mingw ${SHELL_COMMAND}

mingw:
	$(MAKE) shell-mingw SHELL_COMMAND='./platform/mingw/build.sh'

clean:
	rm -rf build
