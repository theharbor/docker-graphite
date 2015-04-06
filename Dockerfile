FROM zoni/ubuntu:latest
MAINTAINER Nick Groenen

COPY bin/build*.sh /
RUN /build1.sh && rm /build*.sh

USER graphite
ENV GRAPHITE_ROOT /opt/graphite
