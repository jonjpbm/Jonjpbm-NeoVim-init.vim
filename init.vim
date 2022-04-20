"The config file is located at:
"Unix                    ~/.config/nvim/init.vim         (or init.lua)
"Windows                 ~/AppData/Local/nvim/init.vim   (or init.lua)
"$XDG_CONFIG_HOME        $XDG_CONFIG_HOME/nvim/init.vim  (or init.lua)

"---- Key Mappings ----
":nmap - Display normal mode maps
":imap - Display insert mode maps
":vmap - Display visual and select mode maps
":smap - Display select mode maps
":xmap - Display visual mode maps
":cmap - Display command-line mode maps
":omap - Display operator pending mode maps

" https://vim.fandom.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1)
" <leader> is forwardslash and the letter l
nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬,space:·

" Show numbers
:map <C-n> :set nu<CR>
:map <C-o> :set nonu<CR>

:imap <C-L> ---------------------------------------------------------------------------------------------<CR>

"---- General ----
" Turn on syntax highlighting
syntax on                      "enable syntax hylighting files opened by vim

" Show line numbers
set number                     "enable line numbers

" Show file stats
set ruler

" show the matching part of the pair for [] {} and ()
" http://vimdoc.sourceforge.net/htmldoc/options.html#'showmatch'
set showmatch

set ignorecase                 "ignorecase while search

" This is for the vim-plugin
" https://github.com/hashivim/vim-terraform
"Terraform has a command called terraform fmt which is the canonical format and style for *.tf files.
"What’s really slick is vim-terraform allows automatically running terraform fmt when saving *.tf and/or *.tfvars files
let g:terraform_fmt_on_save=1

"Along with terraform fmt I would recommend adding the override for indentation to your .vimrc.
"This overrides the indentation level to 2 spaces to conform to the hashicorp style:
let g:terraform_align=1

"---- Spell check ----
" http://vimdoc.sourceforge.net/htmldoc/spell.html
set spell spelllang=en_us      "enable spell check with language = en_us
highlight SpellBad cterm=underline ctermfg=NONE ctermbg=NONE   "just underline bad spell
highlight SpellCap cterm=NONE ctermfg=NONE ctermbg=009   "just underline bad spell
" SpellLocal finds words and compares then another language (en_us vs en_ca) and highlights them
highlight SpellLocal cterm=NONE ctermfg=NONE ctermbg=NONE   "just underline bad spell

"---- Tabs spaces etc ----
"https://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab smarttab
set autoindent
