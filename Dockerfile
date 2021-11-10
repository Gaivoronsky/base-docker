FROM python:3.8

MAINTAINER Alexander Gaivoronsky <lifami40@gmail.com>

RUN apt update && apt upgrade -y && apt install python3-pip -y

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 -
ENV PATH="${PATH}:/root/.poetry/bin"
RUN poetry config virtualenvs.create false
