# CI/CD using Github Actions

## Workflow explaination
The Docker Image CI workflow will build and push the image to dockerhub and send a telegram message to the bot @devops2020_bot for every commit made.

## Step 1: Build and push docker image
This step will build the root Dockerfile and tage the image as nodejs-api, log into Docker Hub using Github Secrets and push the image to the Docker Hub repository.

### Input parameters
* username: Username used to log in to a Docker registry. 
* password: Password or personal access token used to log in to a Docker registry.
* dockerfile: Path to the Dockerfile.
* repository: Docker repository to tag the image with.
* tag with ref: Tag the image according to the Git Reference. For the master branch, the image tag will be "latest".

## Step 2: Send message
This step will send 2 telegram notification messages, the first message is the default message, which states that the Docker Image CI workflow has been triggered by the user. 
* Eg: madeline-lee/nodejs-api/Docker Image CI triggered by madeline-lee (push)
The second message states the type of event that has triggered the workflow. 
* Eg: The push event has been triggered.

### Input parameters
* telegram_to: Unique identifier for this chat.
* telegram token: Telegram authorization token.

Refer to [Telegram Bot API](https://core.telegram.org/bots/api) for more information.
