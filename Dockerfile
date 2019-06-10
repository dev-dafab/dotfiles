# pull base image.
FROM ubuntu:16.04

# install.
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y curl git htop man unzip vim wget zsh nodejs && \
  rm -rf /var/lib/apt/lists/*

ENV USER dev
ENV TERM xterm
ENV SHELL /bin/zsh
ENV HOME /home/${USER}
ENV PATH /home/dev/bin:$PATH
ENV HOSTNAME dev-machine

RUN useradd ${USER}
RUN mkdir ${HOME}
RUN chown -R ${USER}:${USER} ${HOME}
RUN chsh -s /bin/zsh

# Install Zsh
# RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# ENV ZSH ${HOME}/.oh-my-zsh

WORKDIR $HOME
CMD ["/bin/zsh", "--login"]
