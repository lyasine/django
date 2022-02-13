FROM python:latest
MAINTAINER Yasine L <lyasine@gmail.com>


RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*

#RUN pip3 install Django==4.0.2
RUN pip3 install  django==3.2.10
RUN pip3 install djangorestframework
RUN pip3 install markdown
RUN pip3 install django-filter
RUN pip3 install django-cors-headers
RUN pip3 install psycopg2
RUN pip3 install Pillow

WORKDIR /var/www/html

VOLUME ["/var/www/html"]

ENV DJANGO_VERSION 4.0.2


EXPOSE 8000
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
