FROM alpine:latest

# Install Node.js and npm
RUN apk add --update build-base nodejs npm

# Install global npm packages
RUN npm install -g markdownlint-cli2 markdown-link-check

WORKDIR /usr/src/app

# By default, just keep the container running
CMD ["sleep", "infinity"]
