# Python support can be specified down to the minor or micro version
# (e.g. 3.6 or 3.6.3).
# OS Support also exists for jessie & stretch (slim and full).
# See https://hub.docker.com/r/library/python/ for all supported Python
# tags from Docker Hub.
FROM python:3.7.3-alpine

# If you prefer miniconda:
#FROM continuumio/miniconda3

# LABEL Name=flask_todo_webapi_docker Version=0.0.1

RUN adduser -D todoapi
USER todoapi

WORKDIR /home/todoapi

# Enviroment settings
ENV TODOAPI_ENV=docker
ENV TODOAPI_REMOTE_DEBUG=on
ENV PATH $PATH:/home/todoapi/.local/bin

ADD --chown=todoapi:todoapi . ./
RUN pip install --user flask flask-sqlalchemy flask-restless flask-cors waitress

# Using pip:
EXPOSE 5000
CMD ["python", "main.py"]

# Using pipenv:
#RUN python3 -m pip install pipenv
#RUN pipenv install --ignore-pipfile
#CMD ["pipenv", "run", "python3", "-m", "flask_todo_webapi_docker"]

# Using miniconda (make sure to replace 'myenv' w/ your environment name):
#RUN conda env create -f environment.yml
#CMD /bin/bash -c "source activate myenv && python3 -m flask_todo_webapi_docker"
