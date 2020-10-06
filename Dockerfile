FROM php:7.4-alpine

LABEL "repository"="http://github.com/smoench/deptrac-action"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Simon Mönch <simon.moench@sensiolabs.de>"

ENV VERSION=0.8.2

ADD https://github.com/sensiolabs-de/deptrac/releases/download/$VERSION/deptrac.phar /usr/local/bin/deptrac
RUN chmod +x /usr/local/bin/deptrac

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
