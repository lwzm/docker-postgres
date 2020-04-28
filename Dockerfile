FROM lwzm/python

LABEL maintainer="lwzm@qq.com"

RUN apk add --no-cache su-exec postgresql postgresql-plpython3

COPY entrypoint /bin/

VOLUME /var/lib/postgresql/data/
EXPOSE 5432

ENTRYPOINT [ "entrypoint" ]
CMD [ "postgres" ]
