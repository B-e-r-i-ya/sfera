FROM python:rc-alpine3.14

WORKDIR /

RUN apk add py3-pip --upgrade && pip install django && django-admin startproject test1 && python3 /test1/manage.py migrate && rm -rf /test1/test1/settings.py
 

ADD settings.py /test1/test1/

CMD [ "python3", "/test1/manage.py", "runserver", "0.0.0.0:8000"]

EXPOSE 8000

