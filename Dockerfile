FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y iputils-ping

ENV PATH /opt/scprime/bin:$PATH
ENV SCPRIME_MODULES gctwh
ENV SCPRIME_DATA_DIR /opt/scprime/data
ENV DAEMON_DATA_DIR /opt/scprime/daemon-data

EXPOSE 4282 4283 4285

COPY scprime /opt/scprime
COPY scripts /scripts

WORKDIR /opt/scprime

ENTRYPOINT ["/scripts/init.sh"]
