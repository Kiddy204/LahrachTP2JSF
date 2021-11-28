@echo off
call mvn clean package
call docker build -t ma.lahrach/LahrachTp2JSF .
call docker rm -f LahrachTp2JSF
call docker run -d -p 9080:9080 -p 9443:9443 --name LahrachTp2JSF ma.lahrach/LahrachTp2JSF