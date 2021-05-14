<<<<<<< Updated upstream
FROM ubuntu:latest

RUN apt-get update
RUN apt-get install postfix

CMD ["y", 2, "woodytoys.be", 8, 9]

RUN apt-get install mailutils
CMD ["y"]
=======
FROM postfixadmin:apache
ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_DATABASE postfixadminsql
ENV MYSQL_USER quentin
ENV MYSQL_PASSWORD root
ADD postfixadminsql.sql /docker-entrypoint-initdb.d
>>>>>>> Stashed changes
