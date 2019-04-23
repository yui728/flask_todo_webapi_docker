# Python support can be specified down to the minor or micro version
# (e.g. 3.6 or 3.6.3).
# OS Support also exists for jessie & stretch (slim and full).
# See https://hub.docker.com/r/library/python/ for all supported Python
# tags from Docker Hub.
FROM httpd:latest

# If you prefer miniconda:
#FROM continuumio/miniconda3

# LABEL Name=flask_todo_webapi_docker Version=0.0.1

# RUN adduser -D todoview
# USER todoview

# WORKDIR /home/todoview

# Enviroment settings
# ENV PATH $PATH:/home/todoview/.local/bin

# ADD --chown=todoview:todoview . ./

RUN mkdir /usr/local/apache2/htdocs/web
ADD web /usr/local/apache2/htdocs/web

# CMD ["sudo systemctl start httpd"]

# Using Apache
EXPOSE 80
