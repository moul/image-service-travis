# Official Travis-Ci Worker image on Scaleway

[![Travis](https://img.shields.io/travis/scaleway/image-service-travis.svg)](https://travis-ci.org/scaleway/image-service-travis)
[![Scaleway ImageHub](https://img.shields.io/badge/ImageHub-view-ff69b4.svg)](https://hub.scaleway.com/travis-ci-worker.html)
[![Run on Scaleway](https://img.shields.io/badge/Scaleway-run-69b4ff.svg)](https://cloud.scaleway.com/#/servers/new?image=coming-soon)

:warning: *WORK IN PROGRESS* :warning:

Scripts to build the official Travis-Ci Worker image on Scaleway

This image is built using [Image Tools](https://github.com/scaleway/image-tools) and depends on the official [Ubuntu](https://github.com/scaleway/image-ubuntu) image.

<img src="https://travis-ci.com/img/travis-mascot-200px.png" width="201px" />

NOTE: The Travis-CI worker image is not a typical image and is only available for Travis-CI organization.


---

**This image is meant to be used on a C1 server.**

We use the Docker's building system and convert it at the end to a disk image that will boot on real servers without Docker. Note that the image is still runnable as a Docker container for debug or for inheritance.

[More info](https://github.com/scaleway/image-tools)


---

## Install

Build and write the image to /dev/nbd1 (see [documentation](https://www.scaleway.com/docs/create_an_image_with_docker))

    $ make install

Full list of commands available at: [scaleway/image-tools](https://github.com/scaleway/image-tools/#commands)


---

A project by [![Scaleway](https://avatars1.githubusercontent.com/u/5185491?v=3&s=42)](https://www.scaleway.com/)
