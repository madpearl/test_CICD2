FROM registry.access.redhat.com/ubi9/python-312:latest

USER root

WORKDIR /usr/src/app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

USER 1000

CMD [ "python", "./app.py" ]
