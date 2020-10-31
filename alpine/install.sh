apk add --no-cache \
        ack \
        bash \
        build-base \
        chezmoi \
        clang \
        clang-static clang-dev \
        clang-extra-tools \
        cmake \
        curl \
        ctags \
        fd \
        fzf \
        git \
        gnupg \
        go \
        jq \
        linux-headers \
        llvm-static llvm-dev \
        make \
        ncdu \
        neovim \
        nodejs \
        npm \
        python3 \
        tig \
        tmux \
        tree \
        zsh \
        zsh-vcs

ln -s /usr/bin/python3 /usr/bin/python

apk add py3-pip python3-dev libc-dev

pip install pynvim git-plus jedi asciinema

wget https://github.com/gokcehan/lf/releases/download/r14/lf-linux-amd64.tar.gz && \
tar -xf lf-linux-amd64.tar.gz && \
mv lf /usr/bin && \
rm -rf lf-linux-amd64.tar.gz

wget https://github.com/facebook/PathPicker/releases/download/0.8.2/fpp.0.8.2.tar.gz && \
tar -xf fpp.0.8.2.tar.gz && \
mv fpp src /usr/bin/ && \
rm -rf fpp.0.8.2.tar.gz

ln -s /usr/bin/nvim /usr/bin/vim
git clone https://github.com/trapd00r/vimcat
cd vimcat && cp vimcat /usr/bin
cd .. && rm -rf vimcat

npm install -g diff-so-fancy \
               gtop

GO111MODULE=on go get github.com/jstemmer/gotags
