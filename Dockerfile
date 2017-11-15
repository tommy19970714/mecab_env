FROM nvidia/cuda:latest
RUN apt update
RUN apt install -y software-properties-common
RUN apt update
RUN apt install -y zsh python3 python3-pip
RUN apt install -y mecab libmecab-dev mecab-ipadic-utf8 git make curl xz-utils file
RUN apt install -y git xclip xsel screenfetch
RUN apt install -y language-pack-ja-base language-pack-ja
RUN git clone https://github.com/neologd/mecab-ipadic-neologd.git /usr/src/mecab-ipadic-neologd && \
/usr/src/mecab-ipadic-neologd/bin/install-mecab-ipadic-neologd -n -y && \
rm -rf  /usr/src/mecab-ipadic-neologd
RUN pip3 install mecab-python3
RUN mkdir -p /volume
ENV LANG=ja_JP.UTF-8
