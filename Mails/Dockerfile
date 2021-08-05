FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get upgrade -y

# Installation des outils
RUN apt-get install -y vim nano telnet mutt dnsutils net-tools iputils-ping mailutils 
RUN apt-get install sudo -y


# Installation Database
RUN apt update
RUN apt-get install mariadb-server -y


#Configuration - MariaDB
COPY configuration-sql/create-db.sql config-sql/create-db.sql
COPY configuration-sql/create-users.sql config-sql/create-users.sql


# Installation de Postfix 
RUN apt-get install -y postfix postfix-mysql 

#Configuration de Postfix
RUN groupadd -g 5000 vhosts && useradd -g vhosts -u 5000 vhosts -d /var/mail/vhosts -s /bin/false -m
COPY configuration-postfix/main.cf /etc/postfix/main.cf
COPY configuration-postfix/master.cf /etc/postfix/master.cf
COPY configuration-postfix/generic /etc/postfix/generic
COPY configuration-postfix/mysql-virtual-mailbox-domains.cf /etc/postfix/mysql-virtual-mailbox-domains.cf
COPY configuration-postfix/mysql-virtual-mailbox-maps.cf /etc/postfix/mysql-virtual-mailbox-maps.cf
RUN postmap /etc/postfix/generic

#Installation de Dovecot (Pour IMAP)

RUN apt-get install -y dovecot-core dovecot-imapd dovecot-mysql
RUN apt-get install -y dovecot-sieve dovecot-managesieved

#Configuration de Dovecot 
COPY configuration-dovecot/dovecot.conf /etc/dovecot/dovecot.conf
COPY configuration-dovecot/dovecot-sql.conf.ext /etc/dovecot/dovecot-sql.conf.ext

COPY configuration-dovecot/10-auth.conf /etc/dovecot/conf.d/10-auth.conf
COPY configuration-dovecot/10-mail.conf /etc/dovecot/conf.d/10-mail.conf
COPY configuration-dovecot/10-master.conf /etc/dovecot/conf.d/10-master.conf

COPY configuration-dovecot/auth-sql.conf.ext /etc/dovecot/conf.d/auth-sql.conf.ext
COPY configuration-dovecot/10-ssl.conf /etc/dovecot/conf.d/10-ssl.conf

COPY configuration-dovecot/20-lmtp.conf /etc/dovecot/conf.d/20-lmtp.conf
COPY configuration-dovecot/default.sieve /var/lib/dovecot/sieve/default.sieve

RUN sievec /var/lib/dovecot/sieve/default.sieve
RUN chown -R vhosts:vhosts /var/lib/dovecot/sieve/*
RUN chmod a+x /var/lib/dovecot

# lance le docker

CMD ["sh", "-c", "service mysql start; mysql -u root < config-sql/create-db.sql; mysql -u root < config-sql/create-users.sql; service postfix start; service dovecot start; tail -F /var/log/mail.log"]