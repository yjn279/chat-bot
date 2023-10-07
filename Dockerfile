FROM ubuntu

WORKDIR /usr/src/app

# cURL
RUN apt update
RUN apt install -y curl

# Git
RUN apt-get install -y git

# Rye
RUN curl -sSf https://rye-up.com/get | RYE_VERSION="0.4.0" RYE_INSTALL_OPTION="--yes" bash
RUN echo 'source "$HOME/.rye/env"' >> ~/.bashrc
RUN ~/.rye/self/bin/pip install -U pip==23.1
# RUN source ~/.bashrc
# RUN rye sync
