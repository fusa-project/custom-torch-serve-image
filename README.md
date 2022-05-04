# Custom image and config-file for torch-serve in FUSA

Build the custom torch-serve docker image with

    docker build . -t fusa-torchserve"

Test the services with

    DOCKER_USER=$(id -u) docker-compose up
