.. contents:: Table of contents
   :depth: 2

Full description
================
The `jupyter/minimal-notebook <https://hub.docker.com/r/jupyter/minimal-notebook/>`_ Docker image with R and Scala.

Docker Hub
==========
The `korniichuk/jupyter-test-notebook <https://hub.docker.com/r/korniichuk/jupyter-test-notebook/>`_ repo.

Quickstart
==========
The following command starts a container with the Notebook server listening for HTTP connections on port 8888 without authentication configured::

    $ docker run -d -p 8888:8888 korniichuk/jupyter-test-notebook
