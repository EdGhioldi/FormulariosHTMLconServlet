#!/bin/sh
mvn clean package && docker build -t chu/ManejoFormulariosHTML .
docker rm -f ManejoFormulariosHTML || true && docker run -d -p 9080:9080 -p 9443:9443 --name ManejoFormulariosHTML chu/ManejoFormulariosHTML