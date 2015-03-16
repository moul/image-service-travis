## -*- docker-image-name: "armbuild/ocs-app-nodejs:trusty" -*-
FROM armbuild/ocs-app-docker:latest
MAINTAINER Online Labs <opensource@ocs.online.net> (@online_en)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Install packages
RUN apt-get -q update                                       \
 && apt-get -y -qq upgrade                                  \
 && apt-get -y -qq install                                  \
        git                                                 \
        golang                                              \
 && apt-get clean


# Clone the travis-ci/worker repository
RUN git clone https://github.com/travis-ci/worker.git
# FIXME: build the project


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
