[![CircleCI](https://circleci.com/gh/JonRexMorris/microservice-kubernetes/tree/master.svg?style=svg)](https://circleci.com/gh/JonRexMorris/microservice-kubernetes/tree/master)

## Project Overview

In this project, I containerized a Machine Learning Microservice API using Docker and Kubernetes.

I was provided a pre-trained `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on.

My task was to operationalize this file `app.py` in a repeatable way by creating a Docker image and steps to run it using Kubernetes.

## Project Features

* Code is tested using linting
* Dockerfile containerizes the application
* Containerized application can be deployed using Docker and can make a prediction
* Image can be deployed using Kubernetes cluster and can make a prediction

---

### Dependencies
#### 1. Python
[Download and install python](https://www.python.org/downloads/). 

#### 2. Docker Desktop
You would require you to install Docker Desktop to create containers for individual microservices. Refer the following links for instructions 
* [macOS](https://docs.docker.com/docker-for-mac/install/), 
* [Windows 10 64-bit: Pro, Enterprise, or Education](https://docs.docker.com/docker-for-windows/install/), 
* [Windows  10 64-bit Home](https://docs.docker.com/toolbox/toolbox_install_windows/). 
* You can find installation instructions for other operating systems at:  https://docs.docker.com/install/

#### 3. Kubernetes 
You would need to install any one tool for creating a Kubernetes cluster - KubeOne / Minikube / kubectl on top of Docker Desktop:
1. [Install and Set Up kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) directly on top of Docker desktop - For Windows/macOS
2. [Install Minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/) - For Linux/macOS

#### 4. An account with Circle CI
You may sign up on [CircleCI.com](https://circleci.com/signup/) with your GitHub credentials. 

#### 5. (optional) AWS account to access AWS Cloud9
You'll need an [AWS account](https://aws.amazon.com/free/?all-free-tier.&all-free-tier.sort-by=item.additionalFields.SortRank&all-free-tier.sort-order=asc) to use the AWS Cloud9 IDE. This can be beneficial if you are unable to install Docker locally, as it comes pre-installed in this environment.

---

## Setup the Environment

* Run `python3 -m venv ~/.devops` to create a virtualenv and `source ~/.devops/bin/activate` to activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`
 
You can then run `./make_prediction.sh` in another ternminal window to feed in sample data for testing.

### Kubernetes Steps

* Setup and Configure Docker locally (as above in Dependencies section)
* Setup and Configure Kubernetes locally (as above in Dependencies section - with minikube installed run `minikube start` to launch cluster)
* App can be run using `./run_kubernetes.sh` with pre-built image on Docker Hub. By editing the `dockerpath` variable in this file you can select a different image to run using this script.
