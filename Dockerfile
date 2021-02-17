# vim:set ft=dockerfile:

FROM ruby:2.7-alpine as app

LABEL maintainer="Peter Hamilton <peter@pdhamilton.uk>" \
      description="ROM-LDAP with Rails"

RUN apk add --no-cache --no-progress \
      build-base \
      openldap-clients \
      sqlite-dev \
      tzdata

WORKDIR /usr/app

VOLUME /usr/app

EXPOSE 3000

COPY docker-entrypoint.sh /

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
