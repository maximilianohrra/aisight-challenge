# devops-challenge-helloworld
# AISIGHT Maximiliano Herrera

## Introduction
This repo includes a single file named "index.js" which exports a function that returns the string "Hello World". The project also includes a second file named "server.js", which uses the "http" module in Node.js to create a server. The server listens on port 5000 and returns the result of the "helloworld" function as the response to HTTP requests.
For this project I have used GitHub Actions for the CI/CD process.

[More info](https://docs.github.com/en/actions)

## Goals
Create a hello world service in a git repository
together with a CI/CD pipeline that performs unit tests, creates a container, pushes the image to a
repository (Docker Hub) and deploys to an online server (I used AWS EC2)

## Main components
- "index.js" for the "hello world" service
- "helloworld.test.js" -> unit tests with mocha
- "helloaisight.com.conf" -> nginx config file to be added -with the ansible playbook
- "inventory.ini" to set the local host for running the nginx conf.
- "scriptcontainer.bash" to cleanup 

### Run it with GithubAct. easy
- Clone the repo
- Modify correspondent secrets:
.$SSH_USER
.$HOST
.$EC2_PRIVATE_KEY
.$DOCKER_USERNAME
.$DOCKER_PASSWORD
- when you push it to your "origin master" github actions will run the workflow automatically

# Run locally, just to see the helloworld
- Run "docker-compose up"
