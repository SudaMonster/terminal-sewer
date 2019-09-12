set -e
base=$(dirname "$0")
#fzf
if [ -e ~/.fzf ]
then
    echo fzf is already installed
else
   git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
   ~/.fzf/install
fi
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
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p  ~/.vim/colors
cd ~/.vim/colors
git clone https://github.com/tomasr/molokai.git
cp -s molokai/colors/molokai.vim .

# tmux



