FROM php:7.3-alpine

LABEL "repository"="http://github.com/smoench/deptrac-action"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Simon Mönch <simon.moench@sensiolabs.de>"

ADD https://github.com/sensiolabs-de/deptrac/releases/download/0.7.0/deptrac.phar /usr/local/bin/deptrac
RUN chmod +x /usr/local/bin/deptrac

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
