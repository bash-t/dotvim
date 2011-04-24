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
set guioptions=gacrL


" ********** XPT Settings **********  
" use <tab> for XPT
let g:xptemplate_key = '<Tab>'
" autocomplete braces
let g:xptemplate_brace_complete = 0

" ********** Indent & Co ***********
set expandtab " tabs to spaces
set number  " linenumbers
set shiftwidth=3 " indent by 3 spaces
set softtabstop=3 " Translate TABS to Spaces in Insert Mode
set textwidth=140 " max zeilenl?nge



set nobackup
set nowritebackup 

"use this colorscheme
colorscheme BusyBee_mod2
"for the changeoptionCommand do not delete the object immediately, but mark it
"with a '$' at the end of the selected object
set cpoptions+=$

"Spitze klammern von zusammengehörenden Tags markierne
set mps+=<:>

set hlsearch

"CSV Plugin Delimiter
let g:csv_delimiter = ";"

" ********** key mappings **********
:map <F8> :silent !couchapp.exe push<CR>:echo "pushed it real good!"<CR>
"Map the Key F1 - F3 to the macros for stripping the SQL Profiler files
nmap <F1> :v/INSERT \\|UPDATE \\|DELETE /d<CR>
"Remove the unwanted part of the line
nmap <F2> 03xf"Dj
""alle ?(irgendwas) durch irgendwas ersetzen.
nmap <F3> :%s/?(\(.\{-}\))/\1/g<CR>
""Kommazahlen, die vom Parser fälschlicherweise ausgegeben wurden bereinigen
nmap <F4> :%s/\(\d\{1}\),\(\d\{1}\)/\1\2/g<CR>

set enc=utf8
