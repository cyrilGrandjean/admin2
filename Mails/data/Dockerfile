FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_DATABASE woodymail
ENV MYSQL_USER quentin
ENV MYSQL_PASSWORD root

ADD woody_mail.sql /docker-entrypoint-initdb.d
