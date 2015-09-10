DOCKER_NAMESPACE =	armbuild/
NAME =			scw-service-travis
VERSION =		latest
VERSION_ALISES =	
TITLE =			Travis-CI worker
DESCRIPTION =		Travis-CI worker
SOURCE_URL =		https://github.com/scaleway/image-service-travis
VENDOR_URL =		https://travis-ci.org/

IMAGE_VOLUME_SIZE =	150G
IMAGE_BOOTSCRIPT =	stable
IMAGE_NAME =		Travis

## Image tools  (https://github.com/scaleway/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/scw-builder | bash
-include docker-rules.mk
