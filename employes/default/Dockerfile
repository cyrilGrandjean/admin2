FROM ubuntu:focal

RUN apt-get update

RUN apt-get install -y update
# dns
RUN apt-get install dnsutils
#mail
RUN apt-get install mailutils
RUN apt-get install -y mutt
#voip
RUN apt-get install -y iputils
RUN apt-get install -y sip-dev
#web
RUN apt-get install curl
RUN apt-get install -y lynx

CMD ["bash"]
