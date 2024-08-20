FROM debian:bookworm

RUN apt update \
  && apt install -y wget lsb-release gnupg procps vim \
  && wget https://dev.mysql.com/get/mysql-apt-config_0.8.29-1_all.deb \
  && echo 4 | dpkg -i mysql-apt-config_0.8.29-1_all.deb \
  && wget -O - https://packages.adoptium.net/artifactory/api/gpg/key/public | tee /etc/apt/keyrings/adoptium.asc \
  && echo "deb [signed-by=/etc/apt/keyrings/adoptium.asc] https://packages.adoptium.net/artifactory/deb $(awk -F= '/^VERSION_CODENAME/{print$2}' /etc/os-release) main" | tee /etc/apt/sources.list.d/adoptium.list \
  && apt update \
  && apt install -y mysql-server redis nginx temurin-8-jdk supervisor

COPY ./supervisord.d/ /etc/supervisor/conf.d/
WORKDIR /root

RUN mkdir -p /root/temp/download
COPY --from=registry.cn-hangzhou.aliyuncs.com/gewe/gewe /etc/nginx/nginx.conf /etc/nginx/nginx.conf
COPY --from=registry.cn-hangzhou.aliyuncs.com/gewe/gewe /etc/supervisord.d/ /etc/supervisor/conf.d/
COPY --from=registry.cn-hangzhou.aliyuncs.com/gewe/gewe /root/gewe /root/gewe
COPY --from=registry.cn-hangzhou.aliyuncs.com/gewe/gewe /var/lib/mysql /var/lib/mysql
RUN rename.ul .ini .conf /etc/supervisor/conf.d/* \
  && chown -R mysql:mysql /var/lib/mysql \
  && rm -f /var/lib/mysql/\#innodb_redo/*

CMD ["/bin/supervisord", "-n"]

