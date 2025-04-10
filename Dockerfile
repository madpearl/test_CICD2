FROM registry.access.redhat.com/ubi9/python-312:latest
ARG WORKSPACE
USER root
RUN mkdir -p "${WORKSPACE}" && chown -R default: /var/jenkins_home/workspace && mkdir -p /var/lib/gebit/till/ && touch /var/lib/gebit/till/requestid.txt && chown -R default: /var/lib/gebit
WORKDIR /usr/src/app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

USER 1000

CMD [ "python", "./app.py" ]
