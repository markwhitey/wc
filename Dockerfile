FROM alpine:3

RUN apk add --update --no-cache supervisor redis nginx openjdk8-jre mysql mysql-client

RUN mysql_install_db --user=mysql --ldata=/var/lib/mysql

COPY ./supervisord.d/ /etc/supervisor.d/
COPY ./init.sql /tmp/init.sql

RUN mkdir -p /root/temp/download
COPY --from=registry.cn-hangzhou.aliyuncs.com/gewe/gewe /etc/nginx/nginx.conf /etc/nginx/nginx.conf
COPY --from=registry.cn-hangzhou.aliyuncs.com/gewe/gewe /etc/supervisord.d/ /etc/supervisor.d/
COPY --from=registry.cn-hangzhou.aliyuncs.com/gewe/gewe /root/gewe /root/gewe

WORKDIR /root

EXPOSE 2531/tcp 2532/tcp
CMD ["/usr/bin/supervisord", "-n"]

