FROM alpine

LABEL maintainer="lwzm@qq.com"

RUN apk add --no-cache su-exec postgresql postgresql-plpython3 \
    && cd /usr/lib/python3* \
    && python3 -OO -m compileall -q -b -f . \
    && find . -name __pycache__ | xargs rm -rf \
    && find . -name '*.py' -delete

COPY entrypoint /bin/

VOLUME /var/lib/postgresql/data/
EXPOSE 5432

ENTRYPOINT [ "entrypoint" ]
CMD [ "postgres" ]
