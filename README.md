# shellinacontainer
'shellinacontainer' sets up shellinabox inside of a docker container. 

To run, simply:
```
 git clone https://github.com/stphnsmpsn/shellinacontainer.git 
 cd shellinacontainer
 docker build . -t IMAGE_NAME
 docker run -it --name CONTAINER_NAME -p 4200:4200 IMAGE_NAME:latest
```

