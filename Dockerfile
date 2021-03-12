FROM php:7.4-alpine

LABEL "repository"="http://github.com/smoench/deptrac-action"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Simon Mönch <simon.moench@qossmic.com>"

ENV VERSION=0.12.0

ADD https://github.com/qossmic/deptrac/releases/download/$VERSION/deptrac.phar /usr/local/bin/deptrac
RUN chmod +x /usr/local/bin/deptrac

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
