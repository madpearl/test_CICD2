ARG ENV_NAME
FROM docker-registry.local.gebit.de:5002/gebit-build-docker/jenkins-slave-sparpos-nxt-bookworm:sparpos-${ENV_NAME}

ARG WORKSPACE

USER root

RUN mkdir -p "${WORKSPACE}" && chown -R jenkins: /var/jenkins_home/workspace && mkdir -p /var/lib/gebit/till/ && touch /var/lib/gebit/till/requestid.txt && chown -R jenkins: /var/lib/gebit
COPY --chown=jenkins ./ "${WORKSPACE}"/
