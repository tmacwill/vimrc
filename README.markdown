The Best .vimrc Ever (tm)
---

## Installation:

    mkdir ~/.vim
    git clone git://github.com/tmac721/vimrc.git ~/.vim
    ln -s ~/.vim/.vimrc ~/.vimrc
    vim +BundleInstall +qall
    cd ~/.vim/bundle/Command-T/ruby/command-t
    ruby extconf.rb 
    make 

If using RVM, you'll want to do
    
    rvm use system

Before installing!

## Color Schemes

The default color scheme is [Smyck](https://github.com/hukl/Smyck-Color-Scheme/), which looks best with the corresponding terminal theme installed as well.

Other available (awesome) colorschemes:

* jellybeans
* skittles_dark
* molokai
* wombat256mod

## Shortcuts

* ; maps to :
* ,a: Ack from the current directory
* ,c<space>: Toggle comments
* ,e: Open file in new tab
* ,l: Toggle NERDTree
* ,ig: Toggle indentation guide
* ,p: Disable mouse support for copying
* ,o: Open file
* ,s: Split window
* ,t: New tab
* ,w: Close tab
* ,y: Show the yank ring
* kj: Switch to normal mode and save
* Ctrl+{h,j,k,l}: Move among windows

🏩
