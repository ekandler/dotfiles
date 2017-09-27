set nocompatible              " be iMproved
filetype off                  " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


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
    "set lines=52
    " 2 for the status line.
    "set cmdheight=2
    " add columns for the Project plugin
    "set columns=110
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


" vhdl indention
"Plugin "file:///home/erwin/.vim/svnbundle/vim-vhdl"


" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


" solarized theme
Plugin 'altercation/vim-colors-solarized'

"Syntax highlight for mako
Plugin 'mako.vim'
au BufRead *.mako set filetype=mako

" Doxygen highlighting and generation
let g:load_doxygen_syntax=1
Plugin 'DoxygenToolkit.vim'
let g:DoxygenToolkit_briefTag_pre="@brief  " 
let g:DoxygenToolkit_paramTag_pre="@param " 
let g:DoxygenToolkit_returnTag="@returns   " 
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------" 
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"

" CtrlP - fuzzy file matching
Plugin 'kien/ctrlp.vim'
nmap <C-f> :CtrlPMRUFiles<CR>

" Taglist
"Plugin 'vim-scripts/taglist.vim'

" Minibufexplorer
Plugin 'minibufexpl.vim'

" python dict
"Plugin 'Pydiction'
"let g:pydiction_location='~/.vim/bundle/Pydiction/complete-dict'

"python clomplete
Plugin 'davidhalter/jedi-vim.git'

" snipmate
"Plugin 'snipMate'
" Plugin "MarcWeber/vim-addon-mw-utils"
" Plugin "tomtom/tlib_vim"
" Plugin "garbas/vim-snipmate"
" Plugin "darkwind-mt/snipmate-snippets"

Plugin 'Shougo/neocomplcache.git' 
Plugin 'Shougo/neosnippet.git'

" Plugin key-mappings. 
imap <C-k>     <Plug>(neosnippet_expand_or_jump) 
smap <C-k>     <Plug>(neosnippet_expand_or_jump) 

" SuperTab like snippets behavior. 
imap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>" 
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>" 

" For snippet_complete marker. 
if has('conceal') 
  set conceallevel=2 concealcursor=i 
endif

" OmniCppComplete
"Plugin 'OmniCppComplete'

" Latex suite
"Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
"let g:Tex_Folding=0 " disable folding
"set grepprg=grep\ -nH\ $*  " enable completion
"au BufEnter *.tex set autowrite
"let g:Tex_DefaultTargetFormat = 'pdf'
"let g:Tex_MultipleCompileFormats = 'pdf'
"let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
"let g:Tex_GotoError = 0
"let g:Tex_ViewRule_pdf = 'evince'


" general autocompletion
"Plugin "neocomplcache"
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
" ..maybe use something else...
"Plugin "Valloric/YouCompleteMe"



"Plugin "vim-scripts/verilog_systemverilog.vim"
"au BufRead,BufNewFile *.sv setfiletype verilog_systemverilog

"Plugin "Kocha/vim-systemc"



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"for airline
set laststatus=2
set encoding=utf-8
let g:airline_powerline_fonts = 1
let g:airline_theme="solarized"

"for solarized
colorscheme solarized
set background=dark
call togglebg#map("<C-F5>")
