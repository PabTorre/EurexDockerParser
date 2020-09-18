FROM centos:centos8

COPY . PARSER
WORKDIR PARSER


RUN yum install -y centos-release-scl
RUN yum install -y devtoolset-8-gcc-*
RUN echo "source scl_source enable devtoolset-8" >> /etc/bashrc
RUN source /etc/bashrc

