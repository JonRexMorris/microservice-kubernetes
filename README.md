[![CircleCI](https://circleci.com/gh/JonRexMorris/microservice-kubernetes/tree/master.svg?style=svg)](https://circleci.com/gh/JonRexMorris/microservice-kubernetes/tree/master)

## Project Overview

In this project, I containerized a Machine Learning Microservice API using Docker and Kubernetes.

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
