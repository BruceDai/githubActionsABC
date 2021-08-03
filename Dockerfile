# Container image that runs your code
FROM openvino/ubuntu20_dev:latest

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY openvino_ci.sh /openvino_ci.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/openvino_ci.sh"]
