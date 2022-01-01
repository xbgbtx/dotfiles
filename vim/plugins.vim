filetype plugin indent on

" Vim-Plug - load if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

source ~/dotfiles/vim/plugins/vim-surround.vim
source ~/dotfiles/vim/plugins/vim-ragtag.vim
source ~/dotfiles/vim/plugins/ale.vim


call plug#end()



