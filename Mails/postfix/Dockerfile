FROM postfixadmin:apache
ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_DATABASE postfixadminsql
ENV MYSQL_USER quentin
ENV MYSQL_PASSWORD root
ADD postfixadminsql.sql /docker-entrypoint-initdb.d
