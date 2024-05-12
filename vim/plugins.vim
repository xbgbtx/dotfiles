filetype plugin indent on

" Vim-Plug - load if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

source ~/dotfiles/vim/plugins/ale.vim
source ~/dotfiles/vim/plugins/commentary.vim
source ~/dotfiles/vim/plugins/html-template-literals.vim
source ~/dotfiles/vim/plugins/glsl.vim
source ~/dotfiles/vim/plugins/jsdoc.vim
source ~/dotfiles/vim/plugins/ragtag.vim
source ~/dotfiles/vim/plugins/surround.vim

call plug#end()

