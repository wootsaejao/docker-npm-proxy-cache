
## Build
```
docker build -t npm_proxy_cache .
```

## RUN
```
docker run --name npm_proxy_cache -d -t --net host --restart on-failure npm_proxy_cache
```

## Usage
```
export NPM_CONFIG_PROXY=http://$(docker-machine ip MACHINE_NAME):8099
export NPM_CONFIG_HTTPS_PROXY=http://$(docker-machine ip MACHINE_NAME):8099
export NPM_CONFIG_STRICT_SSL=false

npm install
```
