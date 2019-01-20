FROM base-ubuntu:18.04

ARG userName=hy

RUN add-apt-repository ppa:bitcoin/bitcoin && \
    add-apt-repository -y ppa:ubuntu-toolchain-r/test

RUN apt-get update && \
    apt-get install -y libstdc++-7-dev bitcoind

## CREATE ${userName} USER ##
RUN mkdir -p /home/${userName}/.bitcoin
RUN groupadd -r ${userName} && \
    useradd -r -g ${userName} -d /home/${userName} -s /sbin/nologin -c "Docker image user" ${userName}

#COPY bitcoin.conf /home/hy/.bitcoin/bitcoin.conf

ENV HOME=/home/${userName}
USER ${userName}

#keygen, sign walletはNodeへの接続が不要(8333, 18333)
#EXPOSE 8332 8333 18332 18333