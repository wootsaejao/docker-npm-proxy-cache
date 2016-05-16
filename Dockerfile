FROM node:6

RUN npm install -g npm-proxy-cache

VOLUME /cache

EXPOSE 8099

CMD ["npm-proxy-cache", "-h", "0.0.0.0", "-p", "8099", "-s", "/cache", "-t", "2592000", "--friendly-names"]
