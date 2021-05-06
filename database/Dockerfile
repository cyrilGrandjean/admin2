FROM mysql:latest
#ENV MYSQL_ROOT_PASSWORD root
#ENV MYSQL_DATABASE woody
#ENV MYSQL_USER quentin
#ENV MYSQL_PASSWORD root
ADD woody.sql /docker-entrypoint-initdb.d
ADD mail.sql /docker-entrypoint-initdb.d
#EXPOSE 3306