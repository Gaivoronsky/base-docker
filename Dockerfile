FROM nvidia/cuda:11.7.1-base-ubuntu20.04

MAINTAINER Alexander Gaivoronsky <lifami40@gmail.com>

RUN apt update && apt upgrade -y && apt install python3-pip python-is-python3 docker.io docker-compose -y

RUN pip install poetry==1.3.0
ENV PATH="/root/.local/bin:$PATH"
RUN poetry config virtualenvs.create false