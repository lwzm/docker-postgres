FROM postgres:15

LABEL maintainer="lwzm@qq.com"

RUN apt update && \
    apt install -y --no-install-recommends postgresql-plpython3-15 \
    && rm -rf /var/lib/apt/lists/*
