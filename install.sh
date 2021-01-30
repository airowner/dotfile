# --- Aix Vim Install Shell ---

# Shell for Install Aix Vim config
# Require Git and Auto Install Vim-Plug

printf "\033[33mChecking Start...\033[0m\n"

hash composer 2>/dev/null && composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/
hash npm 2>/dev/null && npm install -g cnpm --registry=https://registry.npm.taobao.org
alias npm="cnpm"

printf "\033[36mChecking Git install...\033[0m\n"
hash git 2>/dev/null || { echo >&2 "Require Git is not installed! Please install Git before you prefix config aix"; exit 1; }
git --version
printf "\033[36mChecking Git Completed!\033[0m\n"

printf "\033[36mChecking jq install...\033[0m\n"
hash jq 2>/dev/null || { echo >&2 "Require jq is not installed! Please install jq before you prefix config aix"; exit 1; }
jq --version
printf "\033[36mChecking jq Completed!\033[0m\n"

printf "\033[36mChecking ag install...\033[0m\n"
hash ag 2>/dev/null || { echo >&2 "Require ag is not installed! Please install the_silver_searcher before you prefix config aix"; exit 1; }
ag --version
printf "\033[36mChecking ag Completed!\033[0m\n"

if [ "$SHELL" = "zsh" ]; then
  if [ "`uname -s`" = "Darwin" ]; then
    brew install zsh-syntax-highlighting zsh-git-prompt zsh-navigation-tools
  fi
fi

printf "\033[33mChecking Dir\033[0m\n"
if [ ! -d "$HOME/.vim" ]; then
  echo "Make ALL with $HOME Directory PATH"
  printf "\n"
  echo " [- .vim"
  echo "   |- bundle   [ -- Manager Plugin -- ]"
  echo "   |- undo     [ -- Generator Undo file -- ]"
  echo "   |- tags     [ -- Generator Tag file -- ]"
  echo "   |- session  [ -- Session directory -- ]"
  echo "   |- autoload [ -- autoload directory -- ]"
  echo " -] "
  printf "\n"

  mkdir $HOME/.vim
  mkdir $HOME/.vim/bundle
  mkdir $HOME/.vim/undo
  mkdir $HOME/.vim/tags
  mkdir $HOME/.vim/session
  mkdir $HOME/.vim/autoload
fi

if [ ! -d "$HOME/.vim/bundle" ]; then
  echo "Make dir -- bundle"
  mkdir $HOME/.vim/bundle
fi

if [ ! -d "$HOME/.vim/undo" ]; then
  echo "Make dir -- [ undo ]"
  mkdir $HOME/.vim/undo
fi

if [ ! -d "$HOME/.vim/tags" ]; then
  echo "Make dir -- [ tags ]"
  mkdir $HOME/.vim/tags
fi

if [ ! -d "$HOME/.vim/session" ]; then
  echo "Make dir -- [ session ]"
  mkdir $HOME/.vim/session
fi

if [ ! -d "$HOME/.vim/autoload/" ]; then
  echo "Make dir -- [ session ]"
  mkdir $HOME/.vim/autoload/
fi

printf "\033[36mChecking python3 install...\033[0m\n"
hash python3 2>/dev/null || { echo >&2 "Require python3 is not installed! Please install python3 before you prefix config pip3"; exit 1; }
if [ ! -f /usr/local/bin/python3 ]; then
  ln -s `which python3` /usr/local/bin/python3
fi
printf "\033[36mChecking python3 Completed!\033[0m\n"

printf "\033[36mChecking pip3 install...\033[0m\n"
hash pip3 2>/dev/null || { echo >&2 "Require pip3 is not installed! Please install pip3 before you prefix config pynvim"; exit 1; }
printf "\033[36mChecking python3 Completed!\033[0m\n"

pip3 install --user pynvim

if [ ! -f ~/.vim/autoload/plug.vim ]; then
  echo "Clone Vim-Plug Plugin..."
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs -k \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  if [ ! -f ~/.vim/autoload/plug.vim ]; then
    printf "\033[33mplug.vim download failed! please redownload manually https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim to ~/.vim/autoload/ \033[0m\n"
    exit 1;
  fi
fi
printf "\033[33mVim-Plug has Install && Exist\033[0m\n"

printf "\033[33mChecking Completed!\033[0m\n"

printf "\033[36mCopy new files to the HOME PATH...\033[0m\n"

printf "\n"
echo " [- $HOME/"
echo "   |- .vimrc       [ -- Vim config -- ]"
echo "   |- .zshrc       [ -- zshrc config -- ]"
echo "   |- .tmux.conf   [ -- Tmux config -- ]"
echo " -] "
printf "\n"

rm -f $HOME/.zshrc
rm -f $HOME/.vimrc
rm -f $HOME/.aix

# link file in to path
ln -sf `pwd`/bin $HOME/.bin
ln -sf `pwd`/.aix $HOME/.aix
ln -sf `pwd`/.tmux.conf $HOME/.tmux.conf
ln -sf `pwd`/.zshrc $HOME/.zshrc
ln -sf `pwd`/.vimrc $HOME/.vimrc
ln -sf `pwd`/.editorconfig $HOME/.editorconfig
ln -sf `pwd`/.eslintrc.js $HOME/.eslintrc.js
ln -sf `pwd`/.htmlhintrc $HOME/.htmlhintrc

# oh my zsh
if [ ! -d $HOME/.oh-my-zsh ]; then
  git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
fi

# # support NeoVim
# sudo cp -f sysinit.vim /usr/share/nvim/

printf "\033[36mLink Completed, Finish Install !\033[0m\n"
printf "\033[33mPlease Checking Completed!\033[0m\n"
printf "\033[33mIf you use NeoVim, You use command :version to see the .vimrc position and install [ xclip ] to support system clipcord!\033[0m\n"
printf "\n"
exit 0;
