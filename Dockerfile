FROM ubuntu

RUN apt-get update
RUN apt-get install sudo
RUN apt-get install acl

COPY . /root/

WORKDIR /root/

RUN ./genUser.sh

RUN ./aliases.sh

RUN chmod u+x /root/commands.sh

RUN  /root/commands.sh