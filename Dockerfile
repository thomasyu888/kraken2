FROM ubuntu

RUN apt-get update && apt-get -y install wget make build-essential

RUN wget https://github.com/DerrickWood/kraken2/archive/v2.0.6-beta.tar.gz
RUN tar zxvf v2.0.6-beta.tar.gz 

WORKDIR /kraken2-2.0.6-beta

RUN ./install_kraken.sh /kraken

RUN cp /kraken/bin/kraken2{,-build} $HOME/bin

