FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y nano mailutils

RUN apt-get install -y mysql-server
COPY ./woody_mail.sql /etc/mysql/woody_mail.sql


CMD ["service mysql start; mysql -u root < /etc/mysql/woody_mail.sql;"]


#RUN apt-get install postfix postfix-mysql dovecot-core dovecot-imapd dovecot-lmtpd dovecot-mysql
#RUN systemctl reload postfix