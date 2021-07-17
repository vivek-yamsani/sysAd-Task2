FROM ubuntu

COPY . /root/

WORKDIR /root/

RUN ./aliases.sh

RUN apt-get update
RUN apt-get install sudo
RUN apt-get install acl

RUN chmod u+x /root/commands.sh

RUN  /root/commands.sh