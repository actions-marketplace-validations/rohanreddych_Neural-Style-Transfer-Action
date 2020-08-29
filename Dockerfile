FROM alpine:3.10
FROM python:3.7

ADD . /app
WORKDIR /app

RUN pip install -r requirements.txt
RUN chmod +x /app/main.py
CMD python3 /app/main.pyCMD is the command the container executes by default when you launch the built image. A Dockerfile will only use the final CMD defined. The CMD can be overridden when starting a container with docker run $image $other_command.

