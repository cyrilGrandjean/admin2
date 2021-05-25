FROM debian

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y asterisk

COPY conf /etc/asterisk/

CMD ["asterisk","-f"]