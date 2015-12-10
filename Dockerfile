# Name: korniichuk/jupyter-test-notebook
# Short Description: Jupyter Notebook with R and Scala
# Full Description: The jupyter/minimal-notebook Docker image with R and Scala.
# Version: 0.1a1

FROM jupyter/minimal-notebook:latest

MAINTAINER Ruslan Korniichuk <ruslan.korniichuk@gmail.com>

# Now switch to jovyan for all conda installs
USER jovyan

# Install matplotlib, NumPy, SciPy for Python 3
RUN conda install --yes \
    ipywidgets matplotlib numpy scipy \
    && conda clean -yt

# Install matplotlib, NumPy, SciPy for Python 2
RUN conda create -p $CONDA_DIR/envs/python2 \
    python=2.7 ipywidgets matplotlib numpy scipy \
    && conda clean -yt

USER root

# Install Python 2 kernel spec globally to avoid permission problems when
# NB_UID switching at runtime.
RUN $CONDA_DIR/envs/python2/bin/python \
    $CONDA_DIR/envs/python2/bin/ipython \
    kernelspec install-self

# Retrieve new lists of packages
ENV REFRESHED_AT 2015–12–09
RUN apt-get -qq update # -qq -- no output except for errors
