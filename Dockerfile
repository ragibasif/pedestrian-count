# https://hub.docker.com/_/python/
# use an official image with a python interpreter
FROM python:3

# set working directory inside the container
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# copy the project files into container
COPY . .

# run the script
CMD [ "python", "./main.py"]
