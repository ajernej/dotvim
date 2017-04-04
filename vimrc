"{{{
call plug#begin('~/.vim/plugged')
let mapleader = ","
"}}}

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tmhedberg/matchit'
Plug 'groenewege/vim-less'
Plug 'othree/html5.vim'
Plug 'evanmiller/nginx-vim-syntax'

" Plug 'vim-javascript'"{{{

Plug 'pangloss/vim-javascript', { 'frozen': 'true' }
let javascript_enable_domhtmlcss = 1

"}}}
" Plug 'ctrlp.vim'"{{{

Plug 'ctrlpvim/ctrlp.vim'
nmap <silent> <leader>p :CtrlP<cr>
nmap <silent> <leader>t :CtrlPMRU<cr>
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_clear_cache_on_exit = 1

"}}}
" Plug 'vim-jsx'"{{{

Plug 'mxw/vim-jsx'
let g:jsx_ext_required = 0

"}}}
" Plug 'tcomment_vim'"{{{

Plug 'tomtom/tcomment_vim'
nmap <silent> <leader>/ :TComment<cr>
xmap <silent> <leader>/ :TComment<cr>

"}}}
" Plug 'delimitMate'"{{{

Plug 'Raimondi/delimitMate'
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1

"}}}
" Plug 'vim-easy-align'"{{{

Plug 'junegunn/vim-easy-align'
vmap <Enter> <Plug>(EasyAlign)

"}}}
" Plug 'vim-gitgutter'"{{{

Plug 'airblade/vim-gitgutter'
let g:gitgutter_sign_modified = '▪'
let g:gitgutter_sign_modified_removed = '▪'
let g:gitgutter_sign_column_always = 1

"}}}
" Plug 'vim-searchant'"{{{

Plug 'timakro/vim-searchant'
let g:searchant_map_stop = 0
nmap <esc><esc> <Plug>SearchantStop

"}}}

if has("mac")
   " Plug 'YouCompleteMe'"{{{

   Plug 'Valloric/YouCompleteMe'
   let g:ycm_complete_in_comments = 1
   let g:ycm_collect_identifiers_from_comments_and_strings = 1
   let g:ycm_seed_identifiers_with_syntax = 1

   "}}}
   " Plug 'ultisnips'"{{{

   Plug 'SirVer/ultisnips'
   let g:UltiSnipsSnippetsDir='~/.vim/snips'
   let g:UltiSnipsSnippetDirectories=['snips' , 'UltiSnips']

   "}}}
   " Plug 'emmet-vim'"{{{

   Plug 'mattn/emmet-vim'
   let g:user_emmet_expandabbr_key = '<S-space>'

   "}}}
   " Plug 'syntastic'"{{{

   Plug 'scrooloose/syntastic'
   let g:syntastic_auto_jump = 1
   let g:syntastic_enable_signs = 0
   let g:syntastic_mode_map = {
      \ 'mode': 'active',
      \ 'passive_filetypes': ['html'] }
   let g:syntastic_javascript_checkers = ['eslint']

   "}}}
endif

if has("gui_running")
   Plug 'gerw/vim-HiLinkTrace'
   " Plug 'indentLine'"{{{
   Plug 'Yggdroot/indentLine'
   let g:indentLine_char = ''
   let g:indentLine_color_gui = '#393939'
   "}}}
endif

call plug#end()

" MISC KEY MAPS"{{{
nmap <tab> %
nmap k gk
nmap j gj

nnoremap <silent>K :bd<cr>
map . .`[
nnoremap Q @q
nnoremap * *``
nmap <silent> gn :cnext<cr>
nmap <silent> gN :cprev<cr>

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap <silent> <cr> :w<cr>
nnoremap <space> za
nnoremap <S-space> zM

nmap <silent> <leader>ev :e ~/.vim/vimrc<cr>
nmap <silent> <leader>b :b#<cr>

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
" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase
set number
set cmdheight=1
set switchbuf=useopen
set numberwidth=5
set winwidth=79

" set shell=/bin/zsh
set shell=/bin/bash\ -l

" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=
" keep more context when scrolling off the end of a buffer
set scrolloff=2
" Store temporary files in a central spot
set nobackup
set noswapfile
" set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" display incomplete commands
set showcmd
set completeopt-=preview
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
set foldopen-=block
set autoread

set wildignore+=.git,node_modules/**,.git/**
set pumheight=10
let &previewheight=&lines / 2

" Get rid of wrapping
set textwidth=0
set wrapmargin=0
set nowrap

set autochdir
"}}}
" COLOR AND GUI"{{{
set background=dark
colorscheme monokaibright

set list
set cursorline
set listchars=tab:\ \ ,eol:¬
set fillchars=fold:\ 
set guifont=Menlo:h14

set linespace=1
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guicursor+=n-v-ve:blinkoff0-Cursor
set guicursor+=i:ver25-iCursor

set statusline=%<%.99f\ %h%w%m%r\ 
set statusline+=%{SL('fugitive#statusline')}\ %#errormsg#%{SL('SyntasticStatuslineFlag')}%*
set statusline+=%=
set statusline+=\ %y\ 
set statusline+=[%{&ff}]\ 
set statusline+=[%{\"\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"\\"}%k]\ 

"}}}
" SUPERTAB"{{{
if has("mac")
   function! g:UltiSnips_Complete()
      call UltiSnips#ExpandSnippet()
      if g:ulti_expand_res == 0
         if pumvisible()
            return "\<C-n>"
         else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
         endif
      endif
      return ""
   endfunction

   function! g:UltiSnips_Reverse()
      call UltiSnips#JumpBackwards()
      if g:ulti_jump_backwards_res == 0
         return "\<C-P>"
      endif

      return ""
   endfunction

   if !exists("g:UltiSnipsJumpForwardTrigger")
      let g:UltiSnipsJumpForwardTrigger = "<tab>"
   endif

   if !exists("g:UltiSnipsJumpBackwardTrigger")
      let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
   endif

   au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger     . " <C-R>=g:UltiSnips_Complete()<cr>"
   au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsJumpBackwardTrigger . " <C-R>=g:UltiSnips_Reverse()<cr>"
endif
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

" No bell
autocmd VimEnter * set vb t_vb=

autocmd BufNewFile,BufRead *rc set filetype=json
autocmd BufNewFile,BufRead vimrc set filetype=vim

"}}}
" FUNCTIONS"{{{

" GoFile {{{
fun! g:GoFile()
   if !empty(matchstr(getline("."), '<'))
      if !empty(matchstr(getline("."), '<Route'))
         if !empty(matchstr(getline("."), 'require'))
            exe 'norm! $F.gf'
         else
            exe "norm! mz0/component\<cr>Wve\"xygg"
            call search(@x)
            exe "norm! \"xyi'`z"
            exe "edit " . @x
         endif
      else
         exe "norm! mz0f<wve\"xygg"
         call search(@x)
         exe "norm! \"xyi'`z"
         exe "edit " . @x
      endif
   else
      exe 'norm! $F.gf'
   endif
endf
"}}}
nnoremap <silent> gf :call g:GoFile()<cr>

set foldtext=MyFoldText()
" StripFoldText"{{{
fun! StripFoldText(f, m)
   let c = substitute(&commentstring, '%s', a:m, '')  " replace the commentstring %s with the real one
   let c = substitute(c, '\*', '\\*', 'g')            " escape * if present
   let f = substitute(a:f, c, '', '')                 " strip the commentstring with marker
   let f = substitute(f, a:m, '', '')                 " strip the marker only
   return f
endf
"}}}
" MyFoldText"{{{
fun! MyFoldText()
   let markerstart = strpart(&foldmarker, 0, 3)
   let markerend = strpart(&foldmarker, 4, 3)
   let foldstart = StripFoldText(getline(v:foldstart), markerstart)
   let foldend = StripFoldText(getline(v:foldend), markerend)
   let foldend = substitute(foldend,'^\s\+', '', '')
   if (foldend == "")
      if (foldstart == "")
         return "..."
      else
         return foldstart . " ..."
      endif
   else
      return foldstart . " ... " . foldend
   endif
endf
"}}}

" SL"{{{
fun! SL(function)
  if exists('*'.a:function)
    return call(a:function,[])
  else
    return ''
  endif
endf
"}}}

"}}}

" fixme:
autocmd FileType php setlocal omnifunc=

" autocmd FileType javascript set formatprg=prettier\ --stdin\ --tab-width=2
" autocmd BufWritePre *.js exe "normal! gggqG\<C-o>\<C-o>"
