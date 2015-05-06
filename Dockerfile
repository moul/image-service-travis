## -*- docker-image-name: "armbuild/scw-app-nodejs:latest" -*-
FROM armbuild/scw-app-docker:latest
MAINTAINER Scaleway <opensource@scaleway.com> (@scaleway)


# Prepare rootfs for image-builder
RUN /usr/local/sbin/builder-enter


# Environment vars
ENV GOPATH /go
ENV GOROOT /usr/lib/go
ENV PATH $PATH:$GOPATH/bin


# Install packages
RUN apt-get -q update      \
 && apt-get -y -qq upgrade \
 && apt-get -y -qq install \
        git                \
        golang             \
        mercurial          \
        subversion         \
 && apt-get clean


# Clone the travis-ci/worker repository and install deppy
RUN mkdir -p $GOROOT $GOPATH/src/github.com/travis-ci \
 && git clone https://github.com/travis-ci/worker.git $GOPATH/src/github.com/travis-ci/worker \
 && go get github.com/hamfist/deppy
WORKDIR $GOPATH/src/github.com/travis-ci/worker


# Build the project
RUN deppy restore && go get -u github.com/golang/lint/golint
RUN make


# Clean rootfs from image-builder
RUN /usr/local/sbin/builder-leave
