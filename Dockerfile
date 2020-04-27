FROM alpine

LABEL maintainer="lwzm@qq.com"

RUN apk add --no-cache su-exec postgresql-plpython3 postgresql

COPY entrypoint /bin/

VOLUME /var/lib/postgresql/data/
EXPOSE 5432

ENTRYPOINT [ "entrypoint" ]
CMD [ "postgres" ]
