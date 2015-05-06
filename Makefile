DOCKER_NAMESPACE =	armbuild/
NAME =			scw-service-travis
VERSION =		latest
TITLE =			Travis-CI worker
DESCRIPTION =		Travis-CI worker
SOURCE_URL =		https://github.com/scaleway/image-service-travis


## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
## Here you can add custom commands and overrides
