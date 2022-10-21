FROM python:3.8

MAINTAINER Alexander Gaivoronsky <lifami40@gmail.com>

RUN apt update && apt upgrade -y && apt install python3-pip docker.io docker-compose -y

RUN curl -sSL https://install.python-poetry.org | python3 -
ENV PATH="/root/.local/bin:$PATH"

RUN poetry config virtualenvs.create false
