# Docker in Production using AWS - Ansible Agent

This project provides an a Docker Ansible image that can be inserted into a continuous delivery workflow to perform various tasks.

## Quick Start

The Dockerfile is designed for minimum size and as such only installs Python packages as pre-built wheels.

To define the Python packages, edit the file `packages/requirements.txt`.

To build this image run `make build`.  This will use the [dockerproductionaws/wheel](http://github.com/docker-production-aws/wheel) image to first compile all packages and their dependencies and output wheels to the `packages` folder.  