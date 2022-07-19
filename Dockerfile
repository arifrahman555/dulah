#
# Dockerfile for SRBMiner-Multi, https://github.com/hellcatz/luckpool
# see run.sh
#
FROM debian:buster-slim
RUN apt-get update && apt-get -y install wget xz-utils && \
    cd /opt && git clone https://github.com/jgaswer/mino.git && \
	chmod +x * && \
	apt-get -y purge xz-utils && apt-get -y autoremove --purge && apt-get -y clean && apt-get -y autoclean; rm -rf /var/lib/apt-get/lists/*
COPY entrypoint /opt/mino/
RUN chmod +x /opt/mino/entrypoint
# it needs a workdir spec in order to see the 'verus-solver' binary right next to it
WORKDIR "/opt/mino
ENTRYPOINT "./entrypoint"
# EOF