sslsource-docker
--

Build
---
docker build -f Dockerfile

Run
---
docker volume create sslsource-data
docker run -it -e SSLS_ACCESS_ID=[YOUR_ACCEDD_ID] -e SSLS_ACCESS_KEY=[YOUR_ACCESS_KEY] --mount source=sslsource-data,target=/root/.sslsource [docker-image-id]