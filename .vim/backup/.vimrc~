set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'


" Turn on syntax highlighting
syntax on


"gnome-terminal colors
if $COLORTERM == "xfce4-terminal" 
    let g:solarized_termtrans=1
    let g:solarized_termcolors=256
    set t_Co=256
endif

"key bindings
nmap <C-s> :w<CR> 
nmap <C-Left> :bp<CR>
nmap <C-Right> :bn<CR>
imap <C-s> <Esc><Esc>:w<CR>
map <C-n> :NERDTreeToggle<CR>
noremap <C-F3> :set hls!<CR>

" enable filetype-aware indenting
filetype indent on
filetype plugin on 

" Turn on line numbering. Turn it off with "set nonu" 
set nu 

" realative linenumbers
set relativenumber

" Turn on the verboseness to see everything vim is doing.
"set verbose=9

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" I like 4 spaces for indenting
set shiftwidth=4

" I like 4 stops
set tabstop=4

" Spaces instead of tabs
set expandtab

" Always  set auto indenting on
set autoindent
set smartindent

" select when using the mouse
set selectmode=mouse

""Improves tabbing
set smarttab

" Case insensitive search
set ic

" Higlhight search
set hls

" Wrap text instead of being on one line
set lbr


"   Zeilenumbruch nicht innerhalb eines Wortes
set wrap linebreak

"   Undo-File setzen
set undofile
"   Verzeichnis fuer Wiederherstellungsinformationen
set undodir=~/.vim/undo

"   Backup-Dateien vor dem Speichern anlegen//
set backup
"   Verzeichnis zum Speichern (vorher anlegen)
set backupdir=~/.vim/backup/

" if has('gui_running')
    " i like about 80 character width lines
    "set textwidth=78
    " Set 52 lines for the display
    set lines=52
    " 2 for the status line.
    set cmdheight=2
    " add columns for the Project plugin
    set columns=110
    " enable use of mouse
    set mouse=a
    " for the TOhtml command
    " let html_use_css=1
"endif


"for expanding
set foldmethod=indent
set foldnestmax=10
set nofoldenable " 
set foldlevel=0

"How to turn off auto-insert when selecting text with gVim?
behave xterm

" Wildmenu - filesystem autocomplete
set wildmenu
set wildmode=full

" prevent new line when pressing return in autocompletion mode
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" display printed keys
set showcmd


"if !has('gui_running')
"	colorscheme default
"endif


" autochange to current directory
autocmd BufEnter * silent! lcd %:p:h

""""""""""""""""""""""""""""""""""""""""""
""""""""""""""" Bundles """"""""""""""""""
""""""""""""""""""""""""""""""""""""""""""

" Airline
Bundle 'bling/vim-airline'
set laststatus=2
set encoding=utf-8
let g:airline_powerline_fonts = 1
let g:airline_theme="solarized"


" solarized theme
Bundle 'altercation/vim-colors-solarized'
colorscheme solarized
set background=dark
"for solarized
call togglebg#map("<C-F5>")

"Syntax highlight for mako
Bundle 'mako.vim'
au BufRead *.mako set filetype=mako

" Doxygen highlighting and generation
let g:load_doxygen_syntax=1
Bundle 'DoxygenToolkit.vim'
let g:DoxygenToolkit_briefTag_pre="@brief  " 
let g:DoxygenToolkit_paramTag_pre="@param " 
let g:DoxygenToolkit_returnTag="@returns   " 
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------" 
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"

" CtrlP - fuzzy file matching
Bundle 'kien/ctrlp.vim'
nmap <C-f> :CtrlPMRUFiles<CR>

" Taglist
Bundle 'vim-scripts/taglist.vim'

" Minibufexplorer
Bundle 'minibufexpl.vim'

" python dict
"Bundle 'Pydiction'
"let g:pydiction_location='~/.vim/bundle/Pydiction/complete-dict'

" snipmate
Bundle 'snipMate'

" OmniCppComplete
"Bundle 'OmniCppComplete'

" Latex suite
Bundle 'LaTeX-Suite-aka-Vim-LaTeX'
let g:Tex_Folding=0 " disable folding
set grepprg=grep\ -nH\ $*  " enable completion
au BufEnter *.tex set autowrite
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
let g:Tex_GotoError = 0
let g:Tex_ViewRule_pdf = 'evince'


" general autocompletion
"Bundle "neocomplcache"
"" Use neocomplcache. 
"let g:neocomplcache_enable_at_startup = 1 
"" Use smartcase. 
"let g:neocomplcache_enable_smart_case = 1 
"" Use camel case completion. 
"let g:neocomplcache_enable_camel_case_completion = 1 
"" Use underbar completion. 
"let g:neocomplcache_enable_underbar_completion = 1 
"" Set minimum syntax keyword length. 
"let g:neocomplcache_min_syntax_length = 3 
"let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" General AND specific autocompletion
Bundle "Valloric/YouCompleteMe"
