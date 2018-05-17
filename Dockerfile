FROM node:6.10
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# AWS CLI
RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && \
    python get-pip.py && \
    pip install awscli

# yarn
RUN curl -o- -L https://yarnpkg.com/install.sh | bash

# firebase-tool
RUN npm install -g firebase-tools
