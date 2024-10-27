FROM debian:bookworm

ARG TARGETARCH

RUN apt update \
  && apt install -y wget lsb-release gnupg procps vim \
  && wget -O - https://packages.adoptium.net/artifactory/api/gpg/key/public | tee /etc/apt/keyrings/adoptium.asc \
  && echo "deb [signed-by=/etc/apt/keyrings/adoptium.asc] https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | tee /etc/apt/sources.list.d/adoptium.list \
  && apt update \
  && apt install -y redis nginx temurin-8-jdk supervisor

RUN ARCH="$(echo $TARGETARCH | sed -e 's/amd64/x86_64/;s/arm64/aarch64/')" \
    && apt update \
    && apt install -y wget xz-utils libaio1 libnuma1 libncurses6 \
    && wget https://downloads.mysql.com/archives/get/p/23/file/mysql-8.0.39-linux-glibc2.28-$ARCH.tar.xz \
    && mkdir -p /usr/local/mysql \
    && tar -C /usr/local/mysql --strip-components=1 -xJf ./mysql-8.0.39-linux-glibc2.28-$ARCH.tar.xz \
    && rm -f /mysql-8.0.39-linux-glibc2.28-$ARCH.tar.xz \
    && /usr/local/mysql/bin/mysqld --initialize

COPY ./supervisord.d/ /etc/supervisor/conf.d/

RUN mkdir -p /root/temp/download
COPY --from=registry.cn-hangzhou.aliyuncs.com/gewe/gewe /etc/nginx/nginx.conf /etc/nginx/nginx.conf
COPY --from=registry.cn-hangzhou.aliyuncs.com/gewe/gewe /etc/supervisord.d/ /etc/supervisor/conf.d/
COPY --from=registry.cn-hangzhou.aliyuncs.com/gewe/gewe /root/gewe /root/gewe
COPY --from=registry.cn-hangzhou.aliyuncs.com/gewe/gewe /var/lib/mysql /usr/local/mysql/data
RUN rename.ul .ini .conf /etc/supervisor/conf.d/* \
  && chown -R root:root /usr/local/mysql/data \
  && rm -f /usr/local/mysql/data/\#innodb_redo/*

FROM scratch

COPY --from=0 / /
WORKDIR /root

EXPOSE 2531/tcp 2532/tcp
CMD ["/bin/supervisord", "-n"]

