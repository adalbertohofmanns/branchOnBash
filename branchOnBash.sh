#!/bin/bash

echo 'Renomeando .bash_profile para .bash_profile-old'
sudo mv ~/.bash_profile ~/.bash_profile-old
sleep 5s
echo 'Renomeado!!!'
echo 'Preparando arquivo...'
echo '#Adalberto Hofmann' >> ~/.bash_profile
echo '[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile' >> ~/.bash_profile
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*' >> ~/.bash_profile
echo 'git_prompt_info() {' >> ~/.bash_profile
echo "git symbolic-ref HEAD 2> /dev/null | sed -e 's/refs\\/heads\\/\\(.*\\)/ \\(\\\1\\)/' 2> /dev/null" >> ~/.bash_profile
echo '}' >> ~/.bash_profile
echo 'PS1="\[\\033[1;34m\]\w\[\\033[1;31m\]\$(git_prompt_info)\[\\033[0m\] \$(~/.rvm/bin/rvm-prompt) "' >> ~/.bash_profile
sleep 5s
source ~/.bash_profile
echo 'Tudo Pronto, Reinicie o terminal'