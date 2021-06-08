FROM postgres:13

LABEL maintainer="lwzm@qq.com"

RUN apt update && \
    apt install -y postgresql-plpython3-13 \
    && rm -rf /var/lib/apt/lists/*
