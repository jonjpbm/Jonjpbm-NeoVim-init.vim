set ignorecase
:map <C-n> :set nu<CR>
:map <C-o> :set nonu<CR>
":map <C-t> :%s/    / /g<CR>
:map <C-a> :.,$d<CR>
:imap <C-L> ---------------------------------------------------------------------------------------------<CR>
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

" Turn on syntax highlighting
syntax on

" Show line numbers
set number

" Show file stats
set ruler

"modelines allow you to set variables specific to a file. By default, the
"first and last five lines are read by vim for variable settings.
set modeline

"This makes Vim show a status line even when only one window is shown.
set ls=2

set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
set autoindent

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

"Terraform has a command called terraform fmt which is the canonical format and style for *.tf files.
"What’s really slick is vim-terraform allows automatically running terraform fmt when saving *.tf and/or *.tfvars files
let g:terraform_fmt_on_save=1

"Along with terraform fmt I would recommend adding the override for indentation to your .vimrc.
"This overrides the indentation level to 2 spaces to conform to the hashicorp style:
let g:terraform_align=1
