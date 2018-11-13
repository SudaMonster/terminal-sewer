
# zsh
mv ./zsh/theme/xma.zsh-theme ~/.oh-my-zsh/custom/themes
sed -i -e 's/ZSH_THEME=".*"/ZSH_THEME="xma"' ~/.zshrc

# Vim
if [ -e ~/.vimrc ]
then
  echo Find an existing .vimrc file, mv to .vimrc.old
  mv ~/.vimrc ~/.vimrc.old
  ln -s ./vim/.vimrc ~
fi

if [ -e ~/.vim ]
then
  echo Find an existing .vim directory, mv to .vim.old
  mv ~/.vim ~/.vim.old
  mkdir .vim
fi

curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd .vim/bundle
git clone https://github.com/yuttie/comfortable-motion.vim.git
git ckone https://github.com/maralla/completor.vim.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/vim-airline/vim-airline-themes.git
git clone https://github.com/Vimjas/vim-python-pep8-indent.git
cd .vim/colors
git clone https://github.com/tomasr/molokai.git
ln -s colors/molokai.vim .

# tmux



