""
"" Joe Cuffney Vim Configuration
""

" PEP8 Style Guidelines
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

" set the theme to the dracula theme we installed
" color dracula

" source vim-plug plugins
so ~/.vim/plugins

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" fixes issue where nerdtree was putting ^g before all filenames
let g:NERDTreeNodeDelimiter = "\u00a0"