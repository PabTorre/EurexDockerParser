FROM parser-box:latest

COPY . PARSER
WORKDIR PARSER


RUN dnf install -y devtoolset-8-gcc devtoolset-8-gcc-c++
RUN echo "source scl_source enable devtoolset-8" >> /etc/bashrc
RUN source /etc/bashrc



