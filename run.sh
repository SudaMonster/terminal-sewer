set -e
base=$(dirname "$0")
# zsh
if [ -e ~/.oh-my-zsh/custom/themes/xma.zsh-theme ]
then
  echo Find an existing xma.zsh-theme file, mv to xma-old.zsh-theme
  mv ~/.oh-my-zsh/custom/themes/xma.zsh-theme ~/.oh-my-zsh/custom/themes/xma-old.zsh-theme
fi
cp ./zsh/theme/xma.zsh-theme ~/.oh-my-zsh/custom/themes
sed -i -e 's/ZSH_THEME=".*"/ZSH_THEME="xma"/g' ~/.zshrc

# Vim
if [ -e ~/.vimrc ]
then
  echo Find an existing .vimrc file, mv to .vimrc.old
  rm -rf ~/.vimrc.old
  mv ~/.vimrc ~/.vimrc.old
fi
cp ${base}/vim/.vimrc ~

if [ -e ~/.vim ]
then
  echo Find an existing .vim directory, mv to .vim.old
  rm -rf ~/.vim.old
  mv ~/.vim ~/.vim.old
fi
mkdir -p .vim

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/yuttie/comfortable-motion.vim.git
git clone https://github.com/maralla/completor.vim.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/vim-airline/vim-airline-themes.git
git clone https://github.com/Vimjas/vim-python-pep8-indent.git
mkdir -p ~/.vim/colors
cd ~/.vim/colors
git clone https://github.com/tomasr/molokai.git
cp -s molokai/colors/molokai.vim .

# tmux



