"https://vim.fandom.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1)
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

" enable spell check with language = en_us
" http://vimdoc.sourceforge.net/htmldoc/spell.html
set spell spelllang=en_us      "enable spell check with language = en_us
highlight SpellBad cterm=underline ctermfg=NONE ctermbg=NONE   "just underline bad spell
highlight SpellCap cterm=underline ctermfg=NONE ctermbg=009   "Show words that need caps in Blue
" SpellLocal finds words and compares then another language (en_us vs en_ca) and highlights them
highlight SpellLocal cterm=NONE ctermfg=NONE ctermbg=NONE   "Don't show this

"modelines allow you to set variables specific to a file. By default, the
"first and last five lines are read by vim for variable settings.
set modeline

"This makes Vim show a status line even when only one window is shown.
set ls=2

"https://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab smarttab
set autoindent

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" This is for the vim-plugin
" https://github.com/hashivim/vim-terraform
"Terraform has a command called terraform fmt which is the canonical format and style for *.tf files.
"What’s really slick is vim-terraform allows automatically running terraform fmt when saving *.tf and/or *.tfvars files
let g:terraform_fmt_on_save=1

"Along with terraform fmt I would recommend adding the override for indentation to your .vimrc.
"This overrides the indentation level to 2 spaces to conform to the hashicorp style:
let g:terraform_align=1
