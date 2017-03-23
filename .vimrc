set nocompatible
filetype off


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
"Plugin 'ben-holland-young/avea-vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-rails'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-markdown'
Plugin 'othree/html5.vim'
Plugin 'elzr/vim-json'
Plugin 'c.vim'
Plugin 'apple/swift'
Plugin 'toyamarinyon/vim-swift'
Plugin 'django.vim'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-repeat'
Plugin 'mattn/emmet-vim'
Plugin 'tomasr/molokai'
Plugin 'Django-Projects'
Plugin 'leafgarland/typescript-vim'
Plugin 'timheap/linters.vim'
Plugin 'bling/vim-bufferline'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'shougo/vimproc.vim'
Plugin 'thinca/vim-quickrun'
Plugin 'lepture/vim-jinja'
Plugin 'ap/vim-css-color'
Plugin 'mhinz/vim-startify'
Plugin 'edkolev/tmuxline.vim'
Plugin 'vimwiki/vimwiki'
Plugin 'whatyouhide/vim-gotham'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'Chiel92/vim-autoformat'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'keith/investigate.vim'
Plugin 'simeji/winresizer'
Plugin 'wvffle/vimterm'
Plugin 'simnalamburt/vim-mundo'
Plugin 'matze/vim-move'
Plugin 'vim-scripts/pylint.vim'
Plugin 'vim-scripts/TeTrIs.vim'
Plugin 'vim-scripts/Indent-Finder'
Plugin 'vim-scripts/TwitVim'
Plugin 'vim-scripts/CycleColor'
Plugin 'mattesgroeger/vim-bookmarks'
Plugin 'vim-scripts/vim-www'
Plugin 'maksimr/vim-translator'
Plugin 'hienvd/vim-stackoverflow'
Plugin 'manasthakur/vimsessionist'
Plugin 'tibabit/vim-todo'
Plugin 'wsdjeg/github-api.vim'
Plugin 'muansari96/vimify'
Plugin 'Tabtastic'
Plugin 'amdt/sunset'
Plugin 'janko-m/vim-test'
Plugin 'roman/golden-ratio'
Plugin 'koron/minimap-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'arecarn/crunch.vim'
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'alvan/vim-closetag'
Plugin 'c9s/hypergit.vim'
Plugin 'Quramy/tsuquyomi'





call vundle#end()
filetype plugin indent on
" Show line numbers
set relativenumber
" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = "§"
let g:mapleader = "§"

" Fast shortcuts
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>
nmap <leader>wq :wq!<cr>

"Always show current position
set ruler
" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" Enable syntax highlighting
syntax enable

set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

" Useful mappings for managing tabs
map <leader>t :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
    set switchbuf=useopen,usetab,newtab
    set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif
" Remember info about open buffers on close
set viminfo^=%
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
    nmap <D-j> <M-j>
    nmap <D-k> <M-k>
    vmap <D-j> <M-j>
    vmap <D-k> <M-k>
endif

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=
" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction


" Nerd tree auto opening on startup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif"
map <leader>n :NERDTreeToggle<CR>

" Easy tab switching
nnoremap <leader>tp :tabprevious<CR>
nnoremap <leader>tn :tabnext<CR>


" window options
set showmode
set showcmd
set ruler
set ttyfast
set backspace=indent,eol,start
set laststatus=2

" better tab completion on commands
set wildmenu
set wildmode=list:longest
" splitting made easier
"
map <leader>vs :vsplit<CR>
map <leader>s :split<CR>

"tagbar toggle
nmap <leader>tt :TagbarToggle<CR>

"tmux colour thing
let g:tmuxline_powerline_separators = 0

"adds .. to show indentation
set list listchars=tab:»-,trail:·,extends:»,precedes:«

"change colorscheme
colorscheme gotham256
"color column
set colorcolumn=90

"add command for auto formatting
noremap <leader>af :Autoformat<cr>

"map keybinding to fix whitespace
map <leader>fs :FixWhitespace<cr>

"change encoding
"
set encoding=utf8
let g:airline_powerline_fonts = 1

"auto save on
let g:auto_save = 1

"code folding
"set foldmethod=indent

"open docs in dash
let g:investigate_use_dash=1

"undo tree
"" Enable persistent undo so that undo history persists across vim sessions
set undofile
set undodir=~/.vim/undo

"toggler for undo tree
map <leader>mm :MundoToggle<CR>

"run tetris
map <leader>te /te<cr>

" relative line numbers
function! g:ToggleNuMode()
    if(&rnu == 1)
        set nu
    else
        set rnu
    endif
endfunc
nnoremap <leader>rl :call g:ToggleNuMode()<cr>



"fav links
"let g:www_urls = {
"\'vimcom' : 'http://www.vim.org/community.php',
"\'stack' : 'http://stackoverflow.com',
"\'youtube' : 'https://www.youtube.com',
"\'facebook' : 'https://www.facebook.com',
"\'netflix' : 'https://www.netflix.com'
"B
"\}

"disabling arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
"use <C-J> and <C-K> to move selection up and down
let g:move_key_modifier = 'C'

"tabtastic trigger
map <leader>ta :Tabtastic<cr>

"light control
map <leader>ao :!avea set-color blue_violet<CR>
map <leader>f :!avea off <CR>

"refresh
function! Re()
    !cp .vimrc ~
    source ~/.vimrc
endfunc



"light function
function! ShowColors()
    vnew | r ! avea show-colors
endfunc
function! AddColor()
    let toAdd = input("What would you like your colour to be called?: ")
    let red = input("Red 0-255: ")
    let green = input("Green 0-255: ")
    let blue = input("Blue 0-255: ")
    let white = "0"
    execute '! avea add-color ' . toAdd . " " . red . " " . green . " " . blue . " " . white
endfunc
function! DeleteColor()
    let toDel = input("What colour would you like to delete")
    execute '! avea delete-color ' . toDel
endfunc
function! SetBrightness()
    let bright = input("Brightness 0-255: ")
    execute '! avea set-brightness ' . bright
endfunc

function! LightOn()
    let choice = input("Which color would you like to set?: ")
    execute '! avea set-color ' . choice
endfunc

function! LightOff()
    !avea off
endfunc

function! LightManager()

    echo "(1): Show Colors\n (2): Add color\n (3): Delete Color\n (4): Set Brightness\n (5): Turn Light on\n (6): Turn Light Off \n"
    let choice = input("")
    if choice == "1"
        call ShowColors()
    elseif choice == "2"
        call AddColor()
    elseif choice == "3"
        call DeleteColor()
    elseif choice == "4"
        call SetBrightness()
    elseif choice == "5"
        call LightOn()
    elseif choice == "6"
        call LightOff()
    endif

endfunc

"mapping for light control
map <leader>sh :call ShowColors()<cr>
map <leader>so :call LightOn()<cr>
map <leader>sf :call LightOff()<cr>
map <leader>sa :call AddColor()<cr>
map <leader>sd :call DeleteColor()<cr>
map <leader>sm :call LightManager()<cr>


function! Weather()

python << EOF
import vim, urllib2, json

send_url = 'http://freegeoip.net/json'
response = urllib2.urlopen(send_url, None, 20).read()
j = json.loads(response)
lat = j.get('latitude','')
lon = j.get('longitude','')

TIMEOUT = 20
key = "a69c3d11bd54ee9d92fb154f91b049b8"
url = "https://api.darksky.net/forecast/" + key + "/" + str(lat) + "," + str(lon) + "?units=si"
response = urllib2.urlopen(url, None, TIMEOUT).read()
json_response = json.loads(response)
current = json_response.get("currently","")

temp = current.get("temperature")
temp_cmd = "vnew | r !echo 'Temperature: %s' " % temp
vim.command(temp_cmd)

summary = current.get("summary")
summary_cmd = "r !echo 'Summary: %s' " % summary
vim.command(summary_cmd)

storm = current.get("nearestStormDistance")
storm_cmd = "r !echo 'Nearest Storm: %s KM' " % storm
vim.command(storm_cmd)

windSpeed = current.get("windSpeed")
wind_cmd = "r !echo 'Wind Speed: %s KMPH' " % windSpeed
vim.command(wind_cmd)
EOF


endfunction
"mapping for weather client
map <leader>tw :call Weather()<Cr>

"chuck norris joke generator
function! Chuck()
python << EOF
import vim, urllib2, json
url = "https://api.chucknorris.io/jokes/random"
response = urllib2.urlopen(url, None, 20).read()
j = json.loads(response)
joke = j.get("value","")

command = "vnew | r !echo '%s'" % joke
vim.command(command)

EOF
endfunction

"cancel search with esc
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>


"delete blank lines
map <leader>dl :g/^$/d<cr>

"spotify client
function! SpPause()
    !spotify pause
endfunc
function! SpPlay()
    !spotify play
endfunc
function! SpUp()
    !spotify vol up
endfunc
function! SpDown()
    !spotify vol down
endfunc
function! SpNext()
    !spotify next
endfunc
function! SpPrevious()
    !spotify prev
endfunc

map <leader>k :call SpUp()<cr>
map <leader>j :call SpDown()<cr>
map <leader>l :call SpNext()<cr>
map <leader>h :call SpPrevious()<cr>

function! Speed()
    vnew | r ! mac speedtest
endfunc





"












