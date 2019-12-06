# The Best .vimrc Ever (tm)

## Installation:

You'll need vim compiled with Ruby support. To find out if your vim supports Ruby, run this:

    vim --version

If you see `+ruby`, you're good to go. If you see `-ruby`, then your vim doesn't have Ruby. On Ubuntu, you can get a version of vim with Ruby by running:

    sudo apt-get install vim-nox

On Mac, you can install MacVim with:

    brew install macvim

Now you can install the vimrc:

    sudo apt-get install ruby ruby-dev
    mkdir ~/.vim
    pip3 install black powerline-status
    npm install -g prettier prettier-plugin-java
    git clone git://github.com/tmacwill/vimrc.git ~/.vim
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    ln -s ~/.vim/.vimrc ~/.vimrc
    vim +BundleInstall +qall
    cd ~/.vim/bundle/Command-T/ruby/command-t/ext/command-t
    ruby extconf.rb
    make

## Color Schemes

The default color scheme is [Smyck](https://github.com/hukl/Smyck-Color-Scheme/). For best results, install both the vim color scheme _and_ the terminal color scheme. To install the terminal theme, simply double-click the `itermcolors` file for iTerm or the `terminal` file for Terminal, then pick the color scheme from the terminal preferences menu.

Other available (awesome) colorschemes:

- `jellybeans`
- `skittles_dark`
- `molokai`
- `wombat256mod`

## Font

Using one of the following fonts is recommended: https://github.com/Lokaltog/powerline-fonts. Right now, I use Inconsolata. On iTerm2, you may have to make the size of "Non-ASCII Font" smaller than the size of "Regular Font" in order to ensure everything lines up.

## Shortcuts

- ; maps to :
- ,a: ack from the current directory
- ,c: toggle comments
- ,C: toggle block comments
- ,e: open file in new tab
- ,l: toggle NERDTree
- ,h: open a shell in a new tab
- ,k: syntax-check the current file
- ,m: toggle mouse support
- ,p: toggle paste mode
- ,o: open file
- ,s: split window
- ,t: new tab
- ,w: close tab
- kj: enter normal mode and save
- Ctrl+{h,j,k,l}: move among windows
