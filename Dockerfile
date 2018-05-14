FROM node:6.10
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN curl -o- -L https://yarnpkg.com/install.sh | bash
RUN npm install -g firebase-tools
