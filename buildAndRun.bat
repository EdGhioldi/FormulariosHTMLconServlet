@echo off
call mvn clean package
call docker build -t chu/ManejoFormulariosHTML .
call docker rm -f ManejoFormulariosHTML
call docker run -d -p 9080:9080 -p 9443:9443 --name ManejoFormulariosHTML chu/ManejoFormulariosHTML