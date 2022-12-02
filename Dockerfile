FROM php:8.1-alpine

LABEL "repository"="http://github.com/smoench/deptrac-action"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Simon Mönch <simonmoench@gmail.com>"

ENV VERSION=1.0.2

ADD https://github.com/qossmic/deptrac/releases/download/$VERSION/deptrac.phar /usr/local/bin/deptrac
RUN chmod +x /usr/local/bin/deptrac

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
