#!/bin/sh
mvn clean package && docker build -t ma.lahrach/LahrachTp2JSF .
docker rm -f LahrachTp2JSF || true && docker run -d -p 9080:9080 -p 9443:9443 --name LahrachTp2JSF ma.lahrach/LahrachTp2JSF