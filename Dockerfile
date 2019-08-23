FROM php:7.2-alpine

LABEL "com.github.actions.name"="SMOENCH-deptrac"
LABEL "com.github.actions.description"="deptrac"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/smoench/deptrac-ga"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Simon Mönch <simon.moench@sensiolabs.de>"

ADD https://github.com/sensiolabs-de/deptrac/releases/download/0.5.0/deptrac.phar /usr/local/bin/deptrac

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
