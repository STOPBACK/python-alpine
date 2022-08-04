## Python-Alpine image
This is the light version of python alpine linux which can be used for running some python scripts  
Just create a main.py file inside a folder and requirements.txt (optional)

And mount the folder to the /app in the docker image, the docker image will execute the main.py automatically

Example:
```
docker run -d -v "/home/biltu/Desktop/test:/app" stopback/python-alpine:latest
```