# Custom image and config-file for torch-serve in FUSA

Build docker image with

    docker build . -t fusa-torchserve"

Test torch serve with

    docker run --rm -d --name fusa-torchserve -p 7070:7070 -p 7071:7071 -p 8080:8080 -p 8081:8081 -v $(pwd)/model-store:/home/model-server/model-store fusa-torchserve torchserve --start --ncs --ts-config model-store/config.properties
