FROM base-ubuntu:18.04

RUN add-apt-repository ppa:bitcoin/bitcoin && \
    add-apt-repository -y ppa:ubuntu-toolchain-r/test

RUN apt-get update && \
    apt-get install -y libstdc++-7-dev bitcoind

## CREATE HY USER ##
RUN mkdir -p /home/hy/.bitcoin
RUN groupadd -r hy && \
    useradd -r -g hy -d /home/hy -s /sbin/nologin -c "Docker image user" hy

#COPY bitcoin.conf /home/hy/.bitcoin/bitcoin.conf

ENV HOME=/home/hy
USER hy

#keygen, sign walletはNodeへの接続が不要(8333, 18333)
#EXPOSE 8332 8333 18332 18333