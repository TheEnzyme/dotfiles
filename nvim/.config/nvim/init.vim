"--APPEARANCE--"
" Syntax
syntax on
set noshowmode
set background=dark
colo base16-darktooth

" Line number
set nu
highlight SignColumn   ctermbg = black
highlight LineNr       ctermbg = black  ctermfg = green
highlight CursorLineNr ctermbg = black  ctermfg = green

" Cursor line
" set cursorline
highlight CursorLine ctermbg = cyan

"--FUNCTIONALITY--"
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

" Split
set splitbelow
set splitright

" Search
set ignorecase
set smartcase
highlight IncSearch cterm = bold ctermbg = none ctermfg = magenta

" Soft tabs and clever indentation
set expandtab
set softtabstop=4
set shiftwidth=4

set copyindent
set smartindent
set preserveindent

" Reads and writes to files automatically
set autoread
set autowrite

set scrolloff=7

set mouse=

" Markdown syntax
autocmd BufRead,BufNew *.md set filetype=markdown

"--KEYBINDS--"

" Split navigation
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>

" Visual line
nnoremap j gj
nnoremap k gk

nnoremap gj j
nnoremap gk k

noremap <leader><CR> :noh<CR>

"--PLUGINS--"
call plug#begin ('~/.config/nvim/bundle')
Plug 'w0rp/ale'
Plug 'kassio/neoterm'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'janko-m/vim-test'
Plug 'majutsushi/tagbar'
Plug 'ervandew/supertab'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'kshenoy/vim-signature'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline-themes'
Plug 'ntpeters/vim-better-whitespace'

Plug 'garbas/vim-snipmate'  |
Plug 'honza/vim-snippets'   |
Plug 'tomtom/tlib_vim'      |
Plug 'MarcWeber/vim-addon-mw-utils'

call plug#end()

" vim-multiple-cursors "
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-m>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<C-x>'

" Vimwiki "
" let g:vimwiki_list = [{'path': '~/usr/notes/wiki/'}]

" Startify "
" let g:startify_session_dir = '~/.config/nvim/session'

" Git gutter "
let g:gitgutter_override_sign_column_highlight = 0
hi GitGutterAdd          ctermbg = black  ctermfg = green
hi GitGutterChange       ctermbg = black  ctermfg = green
hi GitGutterDelete       ctermbg = black  ctermfg = red
hi GitGutterChangeDelete ctermbg = black  ctermfg = red

" CtrlP "
let g:ctrlp_extensions = ['quickfix', 'undo']
let g:ctrlp_custom_ignore = 'node_modules\|.git'

" EasyMotion "
hi EasyMotionTarget ctermbg=none ctermfg=red
hi EasyMotionTarget2First ctermfg=yellow
hi EasyMotionTarget2Second ctermfg=yellow

hi EasyMotionMoveHL ctermfg=black

" Airline "
let g:airline_left_sep  = ''
let g:airline_right_sep = ''

let g:airline_theme = 'base16color'
let g:airline#extensions#tabline#enabled = 1

" SuperTab "
let g:SuperTabCrMapping = 1
let g:SuperTabMappingTabLiteral = '<S-Tab>'
let g:SuperTabDefaultCompletionType = 'context'

" vim-easy-align "
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" tagbar "
nmap <C-f> :TagbarToggle<CR>

" neomake "
" autocmd BufWinEnter,BufWritePost *.cpp,*.c,*.cc,*.h,*.hpp Neomake gcc
" autocmd BufWinEnter,BufWritePost *.js,*.jsx Neomake eslint
" set complete+=t

" ale "


" test.vim "
let test#strategy = "neoterm"

" Commentary "
autocmd FileType lua setlocal commentstring=--\ %s\ --

" misc "
" set lazyredraw
" set ttyfast
set regexpengine=1
