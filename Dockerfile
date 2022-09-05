FROM postgres:14

LABEL maintainer="lwzm@qq.com"

RUN apt update && \
    apt install -y --no-install-recommends postgresql-plpython3-14 \
    && rm -rf /var/lib/apt/lists/*
