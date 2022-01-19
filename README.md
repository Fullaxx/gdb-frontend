# A docker image running rohanrhu's gdb-frontend

## Base Docker Image
[Ubuntu](https://hub.docker.com/_/ubuntu) 20.04 (x64)

## Software
* [gdb-frontend](https://github.com/rohanrhu/gdb-frontend) - a flexible and extensionable gui debugger
* [gdb](https://www.sourceware.org/gdb/)

## Get the image from Docker Hub or build it locally
```
docker pull fullaxx/gdb-frontend
docker build -t="fullaxx/gdb-frontend" github.com/Fullaxx/gdb-frontend
```

## Volume Options
Drop your code in /data/
```
-v /data:/data
```

## Run the image
Run the image using the default port
```
docker run -d -p 5550:5550 -v /data:/data fullaxx/gdb-frontend
```