if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute "!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Initial setup
set backspace=indent,eol,start
set t_Co=256

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'thaerkh/vim-workspace'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf'
call plug#end()

" Airline Settings
let g:airline#extensions#tabline#enabled = 1

" Nerdtree Settings
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
