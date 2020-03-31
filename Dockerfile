FROM centos:latest
MAINTAINER Felice Pantaleo <felice.pantaleo@cern.ch>

LABEL Name="COVID19 CMS Reaction"
WORKDIR ~/

RUN yum -y  update && \
    wget https://download.foldingathome.org/releases/public/release/fahclient/centos-5.3-64bit/v7.4/fahclient-7.4.4-1.x86_64.rpm && \
    wget https://download.foldingathome.org/releases/public/release/fahcontrol/centos-5.3-64bit/v7.4/fahcontrol-7.4.4-1.noarch.rpm && \
    wget https://download.foldingathome.org/releases/public/release/fahviewer/centos-5.3-64bit/v7.4/fahviewer-7.4.4-1.x86_64.rpm && \
    rpm -i --nodeps fahclient-7.4.4-1.x86_64.rpm && \
    rpm -i --nodeps fahcontrol-7.4.4-1.noarch.rpm && \
    rpm -i --nodeps fahviewer-7.4.4-1.x86_64.rpm
    


# ENV ENV_VAR  value
# RUN cmd #runs at container building time
# COPY 
# EXPOSE 80 
# CMD ["/your/command/here"] #runs after the image has been built 
