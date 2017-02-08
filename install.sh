sudo mv vimrc ~/.vimrc
sudo apt-get update
sudo apt-get install software-properties-common -y 
sudo apt-get install python-software-properties -y 
sudo add-apt-repository ppa:neovim-ppa/unstable 
sudo apt-get update
sudo apt-get install neovim -y
sudo apt-get install python-dev python-pip python3-dev python3-pip -y 
mkdir -p ~/.vim/dein/repos/github.com/Shougo/dein.vim
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor
vim -c ":call dein#install()"

