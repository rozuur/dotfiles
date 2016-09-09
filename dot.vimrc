set nocompatible                " choose no compatibility with legacy vi

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" remove extraneous whitespace when edit mode is exited
Plugin 'thirtythreeforty/lessspace.vim'

" dark powered neo-completion
" Plugin 'Shougo/deoplete.nvim'

call vundle#end()            " required

syntax enable
if !has('nvim')
  set encoding=utf-8  " Set default encoding to UTF-8
endif
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

set matchpairs+=<:>             " Highlight angle brackets like other bracket types
set scrolloff=5                 " Always show 5 lines above/below the cursor
nnoremap Q @q                   " quick recording using qq
"" Disable automatic visual mode with mouse
set mouse-=a
"" Don't display status line
set laststatus=1

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

   set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

" Use deoplete.
let g:deoplete#enable_at_startup = 1
" Enable removal of whitespace
let g:lessspace_enabled = 0

