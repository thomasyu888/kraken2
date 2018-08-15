FROM ubuntu

RUN apt-get update && apt-get -y install wget

RUN wget https://github.com/DerrickWood/kraken2/archive/v2.0.6-beta.tar.gz


