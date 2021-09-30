FROM python:3.8

MAINTAINER Alexander Gaivoronsky <lifami40@gmail.com>

RUN apt update
RUN apt upgrade -y
RUN apt install ffmpeg python3-pip jq -y
RUN pip install yq

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 -
ENV PATH="${PATH}:/root/.poetry/bin"
RUN poetry config virtualenvs.create false

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
