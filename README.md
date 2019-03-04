sslsource-docker
--

For building a docker image containing the [sslsource.io](https://sslsource.io) Agent.

Build
---
```shell
docker build -f Dockerfile
```

Run
---
```shell
docker volume create sslsource-data

docker run -it -e SSLS_ACCESS_ID=[YOUR_ACCESS_ID] \
  -e SSLS_ACCESS_KEY=[YOUR_ACCESS_KEY] \
  --mount source=sslsource-data,target=/root/.sslsource \
  [docker-image-id]
```

Documentation
--
Refer to the [sslsource documentation](https://sslsource.io/docs).