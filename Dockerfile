FROM python:3.8

RUN apt update
RUN apt upgrade -y
RUN apt install ffmpeg python3-pip -y

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 -
ENV PATH="${PATH}:/root/.poetry/bin"
RUN poetry config virtualenvs.create false
RUN poetry run pip3 install -U pip
