call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" most taken from http://www.derekwyatt.org including comments

" Forget being compatible with good ol' vi
set nocompatible

" Get that filetype stuff happening
filetype on
filetype plugin on
filetype indent on

" Turn on that syntax highlighting
syntax on

" Why is this not a default
set hidden

" Don't update the display while executing macros
set lazyredraw

" At least let yourself know what mode you're in
set showmode

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

" The GUI (i.e. the 'g' in 'gvim') is fantastic, but let's not be
" silly about it :)  The GUI is fantastic, but it's fantastic for
" its fonts and its colours, not for its toolbar and its menus -
" those just steal screen real estate
set guioptions=ac


" ********** XPT Settings **********  
" use <tab> for XPT
let g:xptemplate_key = '<Tab>'
" autocomplete braces
let g:xptemplate_brace_complete = 1


set nobackup
set nowritebackup 
"set up linenumbers
set nu
"use this colorscheme
colorscheme BusyBee_mod2
"for the changeoptionCommand do not delete the object immediately, but mark it
"with a '$' at the end of the selected object
set cpoptions+=$

set expandtab
set shiftwidth=4
set softtabstop=4

"Spitze klammern von zusammengeh�renden Tags markierne
set mps+=<:>
