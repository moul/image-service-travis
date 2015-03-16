DOCKER_NAMESPACE =	armbuild/
NAME =			ocs-service-travis
VERSION =		latest
TITLE =			Travis-CI worker
DESCRIPTION =		Travis-CI worker
SOURCE_URL =		https://github.com/online-labs/image-service-travis


## Image tools  (https://github.com/online-labs/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/image-tools | bash
-include docker-rules.mk
## Here you can add custom commands and overrides
