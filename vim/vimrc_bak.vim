" Vim Configs
set nocompatible " vi improved, required

" Automatic installation for Vim-Plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Cursor at position of last saved line when opening file
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" Toggle highlight from search
function! ToggleHighlight ()
  set hlsearch! hlsearch?
endfunction

" Toggle cross highlight at cursor
function! ToggleCursorCross ()
  if &cursorline && &cursorcolumn
    set nocursorline
    set nocursorcolumn
  else
    set cursorline
    highlight CursorLine ctermbg=Red
    set cursorcolumn
    highlight CursorColumn ctermbg=Red
  endif
endfunction

" Diff current file against saved version
function! DiffWithSaved ()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
function! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
" WARN: uncomment out lines below to auto call function above for specified file type
" autocmd BufWrite *.py :call DeleteTrailingWS()
" autocmd BufWrite *.coffee :call DeleteTrailingWS()

function! ShowListChar()
" TODO: make this toggleable
" set list " show trailing spaces and tabs as chars
" set listchars=tab:▸\ ,eol:¬
endfunc

" Command-T build
function! BuildCommandT(info)
  " build C extension required
  !cd ~/.vim/bundle/command-t/ruby/command-t
  !ruby extconf.rb
  !make
endfunction

" YouCompleteMe build
" @param name - name of the plugin
" @param status - 'installed', 'updated', or 'unchanged'
" @param force - set on PlugInstall! or PlugUpdate!
function! BuildYCM(info)
    if a:info.status == 'installed' || a:info.force
        !./install.py --clang-completer --tern-completer
    endif
endfunction

" Vim-Plug
call plug#begin('~/.vim/bundle')

" utility
Plug 'conradIrwin/vim-bracketed-paste' "  enables transparent pasting into vim. (i.e. no more :set paste!)
Plug 'scrooloose/syntastic' " syntax checker
Plug 'tpope/vim-commentary' " comment/uncomment selected lines with: gc
Plug 'mbbill/undotree' " show history of undos in side panel
Plug 'majutsushi/tagbar' " displays tags in a window, ordered by scope
Plug 'christoomey/vim-tmux-navigator' " Vim/Tmux unified navigation key TODO: remove
Plug 'ctrlpvim/ctrlp.vim' " Fuzzy file, buffer, mru, tag, etc finder
Plug 'rking/ag.vim' " use AG in Vim faster

" visual
Plug 'mhinz/vim-startify' " fancy start screen
Plug 'vim-airline/vim-airline' " Lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline-themes' " themes for Airline
Plug 'tpope/vim-fugitive' " Git wrapper, install vim-git if Vim version < 7.2
Plug 'airblade/vim-gitgutter' " show Git diff in gutter

" language specific
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'maksimr/vim-jsbeautify', { 'for': 'javascript' } " formats JavaScript
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'editorconfig/editorconfig-vim' " uses ~/.editorconfig for vim-jsbeautify
Plug 'plasticboy/vim-markdown', { 'for': 'mkd' }
Plug 'elzr/vim-json', { 'for': 'json' } " highlight key:value for JSON
Plug 'groenewege/vim-less', { 'for': 'less' }

" color scheme
Plug 'tomasr/molokai'
Plug 'w0ng/vim-hybrid'
Plug 'morhetz/gruvbox'
Plug 'hukl/smyck-color-scheme'

" autocompletion
Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM'), 'for': ['cpp', 'js'] }
autocmd! User YouCompleteMe if !has('vim_starting') | call youcompleteme#Enable() | endif

" unused plugins
" Plug 'scrooloose/nerdtree' " , { 'on': 'NERDTreeToggle' }
" Plug 'easymotion/vim-easymotion' " faster motions with jump to target

call plug#end()
" WARN: remove any [filetype off, filetype plugin indent on, syntax on], already included by vim-plug

" Encoding and end of line.
" Default file encoding for new files.
setglobal fenc=utf-8
" Detect file encoding when opening a file and try to choose from the following
" encoding list (to check what file encoding was selected run ":set fenc").
set fencs=ucs-bom,utf-8
" Internal encoding used by Vim buffers, help and commands.
set enc=utf-8
" Terminal encoding used for input and terminal display.
set tenc=utf-8

" Vim custom settings
set encoding=utf-8
set modeline " ???!!! something about setting vars specific to files
set backspace=indent,eol,start " custom configure backspace
set linespace=1
set fileformats=unix,dos,mac " open files from mac/dos
set exrc " load .exrc (rc for vi) if present
set hidden " allow auto-hiding of edited buffers
set wildmenu " visual autocomplete for Vim command menu
" set wildmode=list:longest,full " autocompletion menu layout
set tags+=.tags
set shortmess=atI
set complete-=i
set complete-=t
set completeopt-=preview
set autochdir " automatically set current directory to directory of last opened file
set clipboard=unnamed " yanks to OSX clipboard instead
" set paste " WARN: no used due to vim-bracketed-paste fixing paste

" text wrap
let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1) " highlight text past 80 chars
set nojoinspaces " suppress inserting two spaces between sentences
set nowrap " display long lines as is
" set textwidth=0 " disable auto newline during Insert mode
" set whichwrap+=<,>,h,l " scrolling past end of line begins at start of next line
" set linebreak " wrap lines at convenient points
set textwidth=110
let &wrapmargin= &textwidth
set formatoptions=croql

" visual
set number " line numbering
set relativenumber
set ruler " show position in line
set cursorline " use '_' character for cursor
set splitright " all new splits (ex. vssplit) open on right side
set noshowmode " hide Vim mode indicator
set laststatus=2 " always display statusline (e.g. Airline)
set showtabline=2 " always display the tabline, even if there is only one tab
set showcmd " show last command in the bottom right
set splitbelow " new window opens below current one
set splitright " new window opens to the right of current one
set ambiwidth=double

" disable visual alert for errors
set noerrorbells " disable error bells
set novisualbell " disable bell
set t_vb=

" search
set showmatch " highlight matching code such as {},(),[]
set mat=2 " show matching brackets for 2 tenths of a second to blink
set incsearch " search while typing before Return
set hlsearch " highlight search results
set ignorecase " ignoring cases for search
set smartcase  " searches with case if any upper-case chars used
set magic " for regular expression

" identation
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab " use spaces instead of tabs

" lines visible when scrolling past window
set scrolloff=5 " lines from top and bottom
set sidescrolloff=5 " lines on the left
set sidescroll=3 " lines from when scrolled off the window

" optimizations (when editing small files)
set nocursorcolumn
set norelativenumber
set foldmethod=manual " set foldmethod=marker
set synmaxcol=200
set lazyredraw " no redraw while executing macros custom Airline
let loaded_matchparen=1 " avoid loading matchparen
" set nocursorline " no '_' character for cursor

" swap files
set noswapfile " no more *.swp files during Vim edit
set nobackup
set nowb
" set noundofile " TODO: maybe re-enable swap file, backup, and undo file
" Ensure the temp dirs exist
" call system("mkdir -p ~/.vim/tmp/swap")
" call system("mkdir -p ~/.vim/tmp/backup")
" call system("mkdir -p ~/.vim/tmp/undo")
" Change where we store swap/undo files
" set dir=~/.vim/tmp/swap/
" set backupdir=~/.vim/tmp/backup/
" set undodir=~/.vim/tmp/undo/

" Color theme settings
set background=dark
if has("gui_running")
  " Molokai Theme
  colorscheme molokai
  let g:molokai_original = 1 " use original monokai background color
  let g:rehash256 = 1 " attempts to bring the 256 color version as close as possible to the the default (dark) GUI version
  set guifont="Hack Regular:12"
else
  let base16colorspace= 256
  let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
  let g:molokai_original = 1
 	let g:rehash256 = 1
  set t_Co=256 " iTerm2 256 color mode for Airline highlight
  colorscheme hybrid
endif

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
    \ 'mode': 'passive',
    \ 'active_filetypes': [],
    \ 'passive_filetypes': []
\}
let g:syntastic_javascript_checkers = ['standard']
let g:syntastic_javascript_standard_exec = 'semistandard'
let g:syntastic_bash_checkers=['shellcheck']
" WARN: uncomment two lines below to auto lint on save
" autocmd bufwritepost *.js silent !semistandard % --format
" set autoread

" Airline settings
let g:airline_theme='term' " use 'badwolf' for high contrast
let g:airline#extensions#tabline#enabled = 1 " displays all buffers (WARN: even if closed) if only one tab, required for tabline numbering to work
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#fnamemod = ':t' " show filename omitting filepath
let airline#extensions#default#section_use_groupitems = 0 " disable grouping to prevent bleeding UI
let g:airline#extensions#default#section_truncate_width = {} " disable truncation
let g:airline#extensions#tabline#tab_nr_type = 1 " display only tab number
let g:airline#extensions#bufferline#enabled = 0 " disable bufferline
let g:airline#extensions#tabline#exclude_preview = 0 " disable display preview window buffer
let g:airline#extensions#tabline#buffer_nr_show = 0 " hide buffer numbers
let g:airline#extensions#tabline#tab_min_count = 2 " less than 2 tabs will not show tabline, WARN: only applies when 'show_buffer' is false
let g:airline#extensions#tabline#show_splits = 0 " show open splits as panes instead of new tab (more like Tmux)
let g:airline#extensions#tabline#show_tab_nr = 1 " display tab number in tabs mode
let g:tmuxline_powerline_separators = 0 " disable using powerline symbols

" Extra white spaces display
hi ExtraWhitespace guibg=#CCCCCC
hi ExtraWhitespace ctermbg=161
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Ctrl-P settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
" set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_user_command = 'find %s -type f' " MacOSX/Linux
" let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d' " Windows
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_height = 5
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'
let g:ctrlp_max_files=20000
let g:ctrlp_max_depth=20
if executable("pt")
  let g:ctrlp_user_command = 'pt %s --ignore "*.class" -l --nocolor -g ""'
elseif executable("ag")
  let g:ctrlp_user_command = 'ag %s --ignore "*.class" -l --nocolor -g ""'
endif

" Silver Searcher settings
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor " Use ag over grep
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""' " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_use_caching = 0 " ag is fast enough that CtrlP doesn't need to cache
endif

" Startify settings
" WARN: avoid mapping to Startify reserved keys q,e,i,b,s,v,t,<cr>
autocmd User Startified setlocal cursorline
autocmd User Startified map <buffer> , <CR> t<CR> " TODO: verify this works correctly
let g:startify_enable_special = 0 " disable showing empty/quit buffers
let g:startify_change_to_dir = 1
let g:startify_files_number = 8
let g:startify_relative_path = 1
let g:startify_update_oldfiles = 1
let g:startify_use_env = 1
let g:startify_list_order = [
            \ ['   Recents - all:'],
            \ 'files',
            \ ['   Recents - current directory :'],
            \ 'dir',
            \ ['   Bookmarks:'],
            \ 'bookmarks',
            \ ['   Commands:'],
            \ 'commands',
            \ ]
let g:startify_skiplist = [
      \ 'COMMIT_EDITMSG',
      \ 'bundle/.*/doc',
      \ ]
let g:startify_bookmarks = [
      \ { 'c' : '~/.vim/vimrc.vim' },
      \ { 'd' : '~/.dotfiles' },
      \ ]
let g:startify_transformations = [
      \ ['.*vimrc$', 'vimrc'],
      \ ['.*zshrc$', 'zshrc'],
      \ ]
let g:startify_commands = [
        \ ':help reference',
        \ ['Vim Reference', 'h ref'],
        \ {'h': 'h ref'},
        \ {'m': ['My magical function', 'call Magic()']},
        \ ]
redir => header_prompt
  silent pwd
redir END
let g:startify_custom_header = map(split(header_prompt), 'repeat(" ", 3) . v:val')
" let g:startify_custom_footer = map(split(footer_prompt), 'repeat(" ", 3) . v:val')


" Vim-Galore suggested settings
" toggle cursorline whenc changing modes
autocmd WinEnter    * set cursorline
autocmd WinLeave    * set nocursorline
autocmd InsertEnter * set nocursorline
autocmd InsertLeave * set cursorline
" swap lines with above or below
nnoremap [e  :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap ]e  :<c-u>execute 'move +'. v:count1<cr>
" quickly add empty lines, n[<Space> adds n lines
nnoremap [<space>  :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space>  :<c-u>put =repeat(nr2char(10), v:count1)<cr>

" Key bindings
let mapleader = ","
set mouse+=a " enable mouse mode (scrolling, selection, etc)
if &term =~ '^screen'
  " tmux knows the extended mouse mode
  set ttymouse=xterm2
endif
" set timeoutlen=50 " WARN: DO NOT enable, enabling this will make <leader> maps unusable
" set timeout timeoutlen=1000 ttimeoutlen=100 " TODO: verify this fixes slow O inserts
" TIP: Use H (high), M (middle), or L (low) to jump to screen positions to shorten the distance

" Airline tabline numbering
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>= <Plug>AirlineSelectNextTab

" disable arrow keys in Insert mode
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" split (buffer) navigation binding
nnoremap <leader>h <C-W><C-H>
" nnoremap <leader>j <C-W><C-J>
" nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>s :vsplit<Space>
nnoremap <leader>S :split<Space>

" Visual/Select mode binding
vmap / gc " comment out visually selected lines
nnoremap <leader>R :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l> " redraw screen

" move screenline instead of bufferline
noremap <C-J> gj
noremap <C-K> gk

" utility binding
" WARN: some mappings CANNOT have trailing comments
map 0 ^
nnoremap ) }
nnoremap ( {
noremap U :redo<CR> " revert last undo
nnoremap <leader><Tab> <C-w><C-w><CR> " go to previous pane within Vim
nnoremap <leader>j <C-d> " scroll down half a page
nnoremap <leader>k <C-u> " scroll up half a page
" nnoremap <leader>J <C-b> " scroll down a page
" nnoremap <leader>K <C-f> " scroll up a page
nnoremap <leader>' :marks<CR>
nnoremap <leader>" :regs<CR>
nnoremap <leader>r :so $MYVIMRC<CR>

" tab/buffer binding
nnoremap <leader><BS> :ls<CR>
nnoremap <leader>e :tabedit<Space>
nnoremap <leader>f :tabfind<Space>
nnoremap <leader>m :tabmove<Space>
nnoremap <leader>d :cd %:p:h<cr>:pwd<cr>
nnoremap <leader>o :tabonly<CR> " close all tabs except the current one
nnoremap <leader>p :tabedit <c-r>=expand("%:p:h")<CR>/
nnoremap <leader>w :tabclose<CR>
nnoremap <leader>W :tabdo :q<CR> " close all open tabs
nnoremap <leader>\ :tabn<CR> " go to next buffer/tab
nnoremap <leader>a :tab ball <CR> " reopen all closed tabs/buffers

" toggle plugin binding
" WARN: make sure 't' is not binded
nnoremap <leader>ti :IndentLinesToggle<CR>
nnoremap <leader>tl :set rnu!<CR>
nnoremap <leader>tn :Startify<CR>
nnoremap <leader>tt :TagbarToggle<CR>
nnoremap <leader>tu :UndotreeToggle<CR>
nnoremap <leader>ts :SyntasticToggle<CR>
nnoremap <leader>tf :CtrlP<CR>
" function call binding, requires functions defined at top of this file
nnoremap <leader>tc :call ToggleCursorCross()<CR>
nnoremap <leader>th :call ToggleHighlight()<CR>
nnoremap <leader>td :call DiffWithSaved()<CR>

" syntastic binding
nnoremap <leader>sp :lprevious<CR> " go to previous error from Syntastic check, use ':lnext" for next error
" nnoremap <leader>\| :lclose<CR> " close error panel from Syntastic check TODO: check if this can be done using SyntasticToggle instead

" js-beautify plugin bindings, uses .editorconfig file
autocmd FileType javascript noremap <buffer> <leader>tb :call JsBeautify()<cr>
autocmd FileType json noremap <buffer> <leader>tb :call JsonBeautify()<cr>
autocmd FileType jsx noremap <buffer> <leader>tb :call JsxBeautify()<cr>
autocmd FileType html noremap <buffer> <leader>tb :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <leader>tb :call CSSBeautify()<cr>

" Unused settings

" " NerdTree settings
" " close Vim if only window left open is NerdTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" " auto open if vim starts up with no file specified (e.g. vim, not vim .)
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" TODO: figure out if this is needed since Tmux already utilizes the plugin
" Vim-Tmux-Navigator custom key bindings
" let g:tmux_navigator_no_mappings = 1
" nnoremap <silent> {Left-mapping} :TmuxNavigateLeft<cr>
" nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
" nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
" nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

