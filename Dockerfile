FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y  software-properties-common && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt-get update && \
    echo oracle-java9-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java9-installer && \
    apt-get clean \
    && rm -rf /var/lib/apt/lists/*


