FROM ubuntu

RUN apt-get update && apt-get install -y git && git clone https://github.com/luisvasquez/cpuminer-easy.git && \
    apt-get install -y -q automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev make g++ && \
    rm -rf /var/lib/apt/lists/*
WORKDIR cpuminer-easy
RUN ./build-linux.sh
ENTRYPOINT ./cpuminer -a cryptonight -o stratum+tcp://xmr-eu.suprnova.cc:5222 -u Ozzykampha.worker1 -p passord
