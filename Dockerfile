FROM python:3.11.0a5-alpine3.15
MAINTAINER Yasine L <lyasine@gmail.com>


RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*

pip3 install Django==4.0.2

WORKDIR /var/www/html

VOLUME ["/var/www/html"]

ENV DJANGO_VERSION 4.0.2


EXPOSE 8000
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
