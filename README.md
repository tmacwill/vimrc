# The Best .vimrc Ever (tm)

## Installation:

    mkdir ~/.vim
    pip3 install black
    sudo npm install --global prettier @prettier/plugin-ruby prettier-plugin-java
    git clone git://github.com/tmacwill/vimrc.git ~/.vim
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    ln -s ~/.vim/.vimrc ~/.vimrc
    vim +BundleInstall +qall

## Font

Using one of the following fonts is recommended: https://github.com/Lokaltog/powerline-fonts. Right now, I use Inconsolata.

## Shortcuts

- ; maps to :
- ,a: ack from the current directory
- ,c: toggle comments
- ,C: toggle block comments
- ,e: open file in new tab
- ,l: toggle NERDTree
- ,h: open a shell in a new tab
- ,m: toggle mouse support
- ,p: toggle paste mode
- ,o: open file
- ,s: split window
- ,t: new tab
- ,w: close tab
- kj: enter normal mode and save
- Ctrl+{h,j,k,l}: move among windows
