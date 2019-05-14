FROM ubuntu:18.04
MAINTAINER Jayme Anchante <jayme.anchante@disroot.org>

RUN apt update
RUN apt install --yes git python3-pip mpv
RUN pip3 install --upgrade pip
RUN pip3 install youtube-dl
RUN pip3 install -U git+https://github.com/mps-youtube/mps-youtube.git

ENTRYPOINT ["mpsyt"]
