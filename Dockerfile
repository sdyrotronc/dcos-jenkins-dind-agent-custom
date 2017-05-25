FROM standyro/jenkins-dind:alpine-latest

COPY patch.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/patch.sh

RUN apk --update add ethtool
