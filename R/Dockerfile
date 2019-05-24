FROM ubuntu:18.04

RUN apt update && apt install --yes tzdata
RUN echo "America/Sao_Paulo" | tee /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata
RUN apt install --yes r-base

ENTRYPOINT ["R", "--no-save"]
