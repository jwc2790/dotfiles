""
"" Joe Cuffney Vim Configuration
""

set textwidth=79  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set autoindent    " align the new line indent with the previous line

" editor
set number        " show line numbers
set ruler         " show ruler

syntax on         " enable syntax highlighting

" vim-plug 
call plug#begin('~/.vim/plugged')

" file tree plugin
" https://github.com/scrooloose/nerdtree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" syntax plugin
" https://github.com/scrooloose/syntastic
Plug 'scrooloose/syntastic'

" asyncronous lint engine (ALE)
" https://github.com/w0rp/ale
Plug 'w0rp/ale'

" show changes since latest git revision
" https://github.com/gu-fan/clickable.vim
Plug 'airblade/vim-gitgutter'

" editor config
" https://github.com/editorconfig/editorconfig-vim
Plug 'editorconfig/editorconfig-vim'

" surround selected with (), {} etc.
Plug 'tpope/vim-surround'

" multiple cursors
Plug 'terryma/vim-multiple-cursors'

" status line
Plug 'itchyny/lightline.vim'

" fuzzy finder
Plug 'junegunn/fzf.vim'

" my vim theme
Plug 'dracula/vim', { 'as': 'dracula' }

" test files or test suites from within the file
Plug 'janko-m/vim-test'

" comment out lines
Plug 'scrooloose/nerdcommenter'

" click on links
" Plug 'gu-fan/clickable.vim'

" code completion
" Plug 'valloric/youcompleteme'

call plug#end()

" :PlugInstall after a new plugin is added

" set the theme to the dracula theme we installed
" color dracula

" start with nerdtree open
" au VimEnter *  NERDTree 

" so ~/.vim/plugins
" ^^ is sourcing the file
