FROM ubuntu:18.04

WORKDIR /root/

RUN apt update
RUN apt install --yes curl git unzip vim wget
RUN mkdir .vim \
 && cd .vim \
 && wget https://www.vim.org/scripts/download_script.php?src_id=16250 -O ConqueTerm.zip \
 && unzip ConqueTerm.zip \
 && rm ConqueTerm.zip   
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

RUN git clone --bare https://github.com/jayme-anchante/dotfiles.git $HOME/.cfg
RUN function config { /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@ }
RUN mkdir -p .config-backup
RUN config checkout\
 && if [ $? = 0 ]; then\
  echo "Checked out config.";\
  else\
    echo "Backing up pre-existing dot files.";\
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}\
fi;\
 && config checkout\
 && config config status.showUntrackedFiles no

RUN vim -S install_packages.vim

ENTRYPOINT ["vim"]
