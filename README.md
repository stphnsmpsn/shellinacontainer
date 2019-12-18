# shellinacontainer
'shellinacontainer' sets up shellinabox inside of a docker container. 

Beofre you can use this project, you must have Docker installed. On Ubuntu based systems, I do this in the following way:
```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
apt-cache policy docker-ce
sudo apt-get install -y docker-ce
sudo systemctl status docker
sudo usermod -aG docker ${USER}
su ${USER}
```

to test the installation, try to run the hello world image from docker (note: you may need to log back out and log in for new group to take effect):
```
docker run hello-world
```

Now, we can build our shellinacontainer image:
```
 git clone https://github.com/stphnsmpsn/shellinacontainer.git 
 cd shellinacontainer
 docker build . -t IMAGE_NAME
 ```
 
Finally, to run simply:
```
 docker run -it --name CONTAINER_NAME -p 4200:4200 IMAGE_NAME:latest
```

