

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/cask
brew tap homebrew/services
brew tap openresty/brew
brew tap dart-lang/dart

# zshell needed
brew install zsh-completions \
zsh-git-prompt \
zsh-navigation-tools \
zsh-syntax-highlighting \
ctags \
fzf \
jq \
ag \

# oh my zsh
if [ ! -d $HOME/.oh-my-zsh ]; then
	git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
fi

# change shell
chpass -s /bin/zsh

# install shell env
$(cd $(dirname $0); pwd)/install.sh


# install base softwares
brew install \
autoconf \
automake \
cmake \
cscope \
curl \
curl-openssl \
expect \
fontconfig \
freetype \
gcc \
gd \
geoip \
gettext \
imagemagick \
graphicsmagick \
jemalloc \
mcrypt \
openssl \
pkg-config \
readline \
zlib \
woff2 \

# install shell softwares
brew install \
hicolor-icon-theme \
tmux \
tree \
enca \
dos2unix \

# install common used softwares
brew install redis \
stunnel \
privoxy \
wget \
telnet \
vim \
vimpager \
unrar \
htop-osx \
axel \
git-archive-all \
mycli \
mysql \
mysql@5.7 \
ntfs-3g \

# install web softwares
brew install caddy \
openresty \

# install php softwares
brew install php \
brew-php-switcher \
phpunit \
php-cs-fixer \
composer \

# install nodejs softwares
brew install node \
nodenv \
yarn \

# install python softwares
brew install python \
python3

# install lua softwares
brew install lua \
luajit \

# install go softwares
brew install go

# options softwares
# brew install \
# berkeley-db4 \
# boost \
# cairo \
# dart \
# docbook \
# elasticsearch \
# kibana \
# mercurial \
# msgpack \
# multimarkdown \
# numpy \
# perl \
# ruby
# samba
# webp
