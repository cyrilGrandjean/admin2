FROM ubuntu:focal

RUN apt-get update

# dns
RUN apt-get install -y dnsutils
#mail
RUN apt-get install -y mailutils
RUN apt-get install -y mutt
#voip
RUN apt-get install -y iputils-ping
RUN apt-get install -y sip-dev
#web
RUN apt-get install -y curl
RUN apt-get install -y lynx

CMD ["bash"]
