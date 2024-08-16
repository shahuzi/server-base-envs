#!/usr/bin/env bash

work_dir=$(dirname $(readlink -f $0))
# install ohmyzsh
cd ~
sudo apt install -y zsh
sudo chsh -s /usr/bin/zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/plugins/zsh-completions
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
cp ${work_dir}/config_files/.zshrc ~
source ~/.zshrc

# install tmux 
sudo apt-get install tmux 
cp ${work_dir}/config_files/.tmux.conf ~

