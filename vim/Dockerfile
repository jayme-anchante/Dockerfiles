FROM ubuntu:18.04

WORKDIR $HOME

RUN apt update
RUN apt install --yes git curl vim
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
RUN git clone https://github.com/jayme-anchante/dotfiles
RUN vim -S install_packages.vim

ENTRYPOINT ["vim"]
