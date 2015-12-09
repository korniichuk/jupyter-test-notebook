# Name: korniichuk/jupyter-test-notebook
# Short Description: Jupyter Notebook with R and Scala
# Full Description: The jupyter/minimal-notebook Docker image with R and Scala.
# Version: 0.1a1

FROM jupyter/minimal-notebook:latest

MAINTAINER Ruslan Korniichuk <ruslan.korniichuk@gmail.com>

# Now switch to jovyan for all conda installs
USER jovyan
