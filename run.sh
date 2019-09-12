#/bin/bash
set -e


section()
{
    echo [$@]
}
base=$(dirname "$0")

section backup
old_config="~/old_config"
mkdir -p ${old_config}


#fzf
section fzf
if [ -e ~/.fzf ]
then
    echo fzf is already installed
else
   git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
   ~/.fzf/install
fi

# zsh
section zsh
if [ -e ~/.oh-my-zsh/custom/themes/xma.zsh-theme ]
then
  echo Find an existing xma.zsh-theme file, mv to xma-old.zsh-theme
  mv ~/.oh-my-zsh/custom/themes/xma.zsh-theme ~/.oh-my-zsh/custom/themes/xma-old.zsh-theme
fi
cp ./zsh/theme/xma.zsh-theme ~/.oh-my-zsh/custom/themes
sed -i -e 's/ZSH_THEME=".*"/ZSH_THEME="xma"/g' ~/.zshrc

# Vim
section vim
if [ -e ~/.vimrc ]
then
  echo Find an existing .vimrc file, mv to ${old_config}/.vimrc
  mv ~/.vimrc ${old_config}.vimrc
fi
cp ${base}/vim/.vimrc ~

if [ -e ~/.vim ]
then
    echo Find an existing .vim directory, mv to .vim.old
    rm -rf ${old_config}.vim
    mv ~/.vim ${old_config}.vim
fi

mkdir -p ~/.vim

section "vim plugins"
echo plug.vim is alread installed
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p  ~/.vim/colors
cd ~/.vim/colors
git clone https://github.com/tomasr/molokai.git
cp -s molokai/colors/molokai.vim .
vim -c "PlugInstall | qa"

section Finish
echo Everything look nice now, enjoy!
# tmux



