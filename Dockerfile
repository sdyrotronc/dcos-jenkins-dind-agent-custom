FROM mesosphere/jenkins-dind:0.5.0-alpine

COPY patch.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/patch.sh

RUN apk --update add ethtool
