FROM ubuntu:18.04

RUN sudo add-apt-repository --yes ppa:kelleyk/emacs
RUN apt update
RUN apt install --yes git software-properties-common python3 python3-dev python3-pip R-base emacs25
COPY install-packages.el ~/
RUN emacs --script ~/install-packages.el

# ENTRYPOINT ["emacs", "-nw"]
