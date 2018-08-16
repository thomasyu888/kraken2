FROM ubuntu

RUN apt-get update && apt-get -y install wget make build-essential rsync

WORKDIR /
RUN wget https://github.com/DerrickWood/kraken2/archive/v2.0.6-beta.tar.gz
RUN tar zxvf v2.0.6-beta.tar.gz 

WORKDIR /kraken2-2.0.6-beta

RUN bash install_kraken2.sh /kraken

RUN cp /kraken/kraken2 /usr/bin
RUN cp /kraken/kraken2-build /usr/bin
RUN cp /kraken/kraken2-inspect /usr/bin