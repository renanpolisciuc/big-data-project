FROM jenkins/jenkins:2.240

ENV NGROK_AUTH_TOKEN=

USER root

RUN apt-get -y update && apt-get install -y wget

WORKDIR /ngrok

RUN wget -O ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip

RUN chown -R jenkins /ngrok

USER jenkins

RUN unzip ngrok.zip

COPY --chown=jenkins:jenkins run.sh ./

EXPOSE 80

ENTRYPOINT [ "./run.sh" ]