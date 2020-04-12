FROM haskell:latest

COPY . /haskell

WORKDIR /haskell

RUN apt-get update \
    && apt-get install -y \
        nmap \
        vim

