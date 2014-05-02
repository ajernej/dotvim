" -"{{{
autocmd!
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"}}}

" PLUGINS "{{{
Plugin 'gmarik/vundle'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'tomtom/tcomment_vim'
Plugin 'Raimondi/delimitMate'
Plugin 'Shougo/neocomplete.vim'
Plugin 'othree/html5.vim'
Plugin 'groenewege/vim-less'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'tmhedberg/matchit'
" Plugin 'gerw/vim-HiLinkTrace'
"}}}

" MISC KEY MAPS"{{{
let mapleader = ","
nmap <tab> %
nmap k gk
nmap j gj
nnoremap <silent>K :bd<cr>
map . .`[

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap <silent> <esc><esc> :nohlsearch<cr>
nnoremap <silent> <cr> :w<cr>
nnoremap <space> za
nnoremap <S-space> zM

nmap <silent> <leader>ev :e ~/.vim/vimrc<cr>
nmap <silent> <leader>/ :TComment<cr>
xmap <silent> <leader>/ :TComment<cr>
nmap <silent> <leader>b :b#<cr>
nmap <silent> <leader>p :CtrlP<cr>
nmap <silent> <leader>t :CtrlPMRU<cr>
"}}}
" BASIC EDITING CONFIGURATION"{{{
set encoding=utf-8
set mouse=a
" allow unsaved background buffers and remember marks/undo for them
set hidden
" remember more commands and search history
set history=10000
set expandtab
set tabstop=3
set shiftwidth=3
set softtabstop=3

set autoindent

set laststatus=2
set showmatch
set matchtime=2
set incsearch
set hlsearch
" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase
set number
set cmdheight=1
set switchbuf=useopen
set numberwidth=5
set winwidth=79
" This makes RVM work inside Vim. I have no idea why.
set shell=bash
" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=
" keep more context when scrolling off the end of a buffer
set scrolloff=3
" Store temporary files in a central spot
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" display incomplete commands
set showcmd
" Enable highlighting for syntax
syntax on
" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" Use OSX/Win Clipboard
set clipboard=unnamed
" Get rid of the left scrollbar in vsplit
set go-=L
set foldmethod=marker
set foldcolumn=0
set autoread

set wildignore+=.git,node_modules/**
set pumheight=10
let &previewheight=&lines / 3

" Get rid of wrapping
set textwidth=0
set wrapmargin=0
set nowrap

set foldtext=MyFoldText()
function! MyFoldText()
   let comment = substitute(&commentstring, '%s', '{{{', '')
   let foldstart = substitute(getline(v:foldstart), comment, '', '')
   let foldstart = substitute(foldstart,'{{{', '', '')
   let comment = substitute(&commentstring, '%s', '}}}', '')
   let foldend = substitute(getline(v:foldend), comment, '', '')
   let foldend = substitute(foldend,'}}}', '', '')
   let foldend = substitute(foldend,'^\s\+', '', '')
   if (foldend == "")
      return foldstart
   else
      return foldstart . " ... " . foldend
   endif
endfunction

function! SL(function)
  if exists('*'.a:function)
    return call(a:function,[])
  else
    return ''
  endif
endfunction

"}}}
" COLOR AND GUI"{{{
set background=dark
colorscheme monokaibright

set list
set listchars=tab:\ \ ,eol:¬
set fillchars=fold:\ 
set guifont=Menlo:h14

set linespace=2
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guicursor+=n-v-ve:blinkoff0-Cursor
set guicursor+=i:ver25-iCursor

set statusline=%<%.99f\ %h%w%m%r\ 
set statusline+=%{SL('fugitive#statusline')}\ %#ErrorMsg#%{SL('SyntasticStatuslineFlag')}%*
set statusline+=%=
set statusline+=\ %y\ 
set statusline+=[%{&ff}]\ 
set statusline+=[%{\"\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"\\"}%k]\ 

"}}}
" PLUGINS CONFIG"{{{
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_clear_cache_on_exit = 1
let g:syntastic_auto_jump = 1
let g:syntastic_enable_signs = 0
let g:syntastic_mode_map = {
   \ 'mode': 'active',
   \ 'passive_filetypes': ['html'] }


function! g:smart_tab()
  " if (matchstr(getline("."), '^\s*#') != "") || (matchstr(getline("."), '^\s*\.') != "")
  "   call emmet#expandAbbr(3, "")
  "   return "\<esc>cit\<cr>\<esc>O"
  " else
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
      if pumvisible()
        return "\<C-n>"
      else
        call UltiSnips#JumpForwards()
        if g:ulti_jump_forwards_res == 0
          return "\<tab>"
        endif
      endif
    endif
    return ""
  " endif
endfunction
let g:UltiSnipsJumpForwardTrigger="<tab>"
"}}}
" AUTOCMD"{{{
" Reload on save
autocmd! bufwritepost ~/.vim/vimrc source ~/.vim/vimrc
autocmd! bufwritepost monokaibright.vim colorscheme monokaibright
" Tap indent in visual mode
autocmd VimEnter * xmap <tab> >gv
autocmd VimEnter * xmap <s-tab> <gv
" Jump to last cursor position unless it's invalid or in an event handler
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
" Smart Tab
autocmd BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:smart_tab()<cr>"
" No bell
autocmd VimEnter * set vb t_vb=
" FileType
" autocmd FileType javascript inoremap ; <esc>A;
" autocmd FileType javascript inoremap . <esc>A.
"}}}

" cd"{{{
if isdirectory('/Volumes/dev/bm')
  cd /Volumes/dev/bm
endif
"}}}

" vim:fdm=marker:
