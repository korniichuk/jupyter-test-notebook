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
    matplotlib numpy scipy \
    && conda clean -yt

# Install matplotlib, NumPy, SciPy for Python 2
RUN conda create -p $CONDA_DIR/envs/python2 \
    python=2.7 matplotlib numpy scipy \
    && conda clean -yt

USER root
