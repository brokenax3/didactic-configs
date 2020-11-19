"                  ://.             
"   :dhyyyyyyhhsymdyyyyyyymo`  
"  `M+hNNNNNNNooh/yNNNNNNm/mo  
"  `NhoNMMMMMh+sh++NMMMMMm/do  
"   `modMMMMMoss+yNMMMMm+-oN+  
"   /N+dMMMMMo/yMMMMMm+-:dN/   
" -mds/dMMMMMNNMMMMm+-/ydyymy  
" /y/s/dMMMMMMMMMm+-/yhhhyo:m  
" -mh/-dMMMMMMMm+-/yhhhy+:omy  
"   /N+dMMMMMm+-/yhhhy+:omy.   
"    modMMMm+-/yhhhy+:omy.     
"    mo/yy+--+hhhy+:omy.       
"    oms++omh/:o+:omy.         
"     `////-/mh/omy.           
"             ://.
"
autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"
set nocompatible
autocmd BufEnter * silent! lcd %:p:h

"----------------------------------------------------------------------------------
" VIM Plug {{{1
"----------------------------------------------------------------------------------
" Specify a directory for plugins
call plug#begin(stdpath('data') . '/plugged')

" General Vim Plugins
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'farmergreg/vim-lastplace'
Plug 'junegunn/vim-easy-align'
Plug 'Konfekt/FastFold'
Plug 'easymotion/vim-easymotion'

" Completion and Syntax Highlighting
Plug 'ycm-core/YouCompleteMe'
Plug 'sheerun/vim-polyglot'

" Vim Markdown Plugins
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

" Vim Snippets Plugins
Plug 'SirVer/ultisnips'

" Theme Plugins
Plug 'itchyny/lightline.vim'
Plug 'sainnhe/forest-night'

" FZF Plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Save Files as Sudo
Plug 'lambdalisue/suda.vim'

" Initialize plugin system
call plug#end()

"----------------------------------------------------------------------------------
" VIM Settings {{{1
"----------------------------------------------------------------------------------
"
" Leader Key
let g:mapleader = "\<Space>"

" Several QOS Settings
syntax enable                           " Enables syntax highlighing
set hidden                              " Required to keep multiple buffers open multiple buffers
set spelllang=en_au
set wildmenu                            " Better command-line completion
set showcmd                             " Show partial commands in the last line of the screen
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler                               " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                        " treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right

" Support 256 colors
set t_Co=256

" Always display the status line, even if only one window is displayed
set laststatus=2

" Indentation Settings
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent

set ignorecase
set smartcase

" Relative Line Numbers
set number relativenumber

" Completion and Timeout
set updatetime=300                      " Faster completion
set notimeout ttimeout ttimeoutlen=200  " Quickly time out on keycodes, but never time out on mappings

" Copy paste between vim and everything else
set clipboard=unnamedplus               

" VIM Marker Folding
set foldmethod=marker

"set autochdir                           " Your working directory will always be the same as your working directory
au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
" cmap w!! w !sudo tee %

"----------------------------------------------------------------------------------
" Mappings {{{1
"----------------------------------------------------------------------------------
"
" Useful mappings
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy, which is the default
map Y y$
 
" Map <C-L> (redraw screen) to also turn off search highlighting until the next search
nnoremap <C-L> :nohl<CR><C-L>

" Buffer fzf
nnoremap <silent> <leader>e :Buffers<CR>

" Pandoc Convert to pdf
nnoremap <silent> <leader>pp :Pandoc! pdf --toc --toc-depth=4 -V geometry:margin=1in -f markdown-raw_tex<CR>
nnoremap <silent> <leader>pd :Pandoc! docx -V geometry:margin=1in -f markdown-raw_tex<CR>

" Theme Settings {{{1
"----------------------------------------------------------------------------------
"
if has('termguicolors')
  set termguicolors
endif

let g:forest_night_enable_italic = 1
let g:forest_night_disable_italic_comment = 1
colorscheme forest-night

let g:lightline = {}
let g:lightline.colorscheme = 'forest_night'

"----------------------------------------------------------------------------------
" Vim-Pandoc-Markdown {{{1
"----------------------------------------------------------------------------------
let g:pandoc#syntax#conceal#blacklist = ['atx']
let g:pandoc#syntax#conceal#urls = 1
let g:pandoc#syntax#style#emphases = 1
let g:pandoc#folding#level = 1
let g:pandoc#folding#fastfolds = 1
let g:pandoc#folding#mode = 'syntax'
let g:pandoc#folding#use_foldtext = 0
let g:pandoc#folding#fdc = 0
let g:pandoc#syntax#codeblocks#embeds#langs = ["c", "asm", "bash=sh", "python", "java"]
let g:pandoc#hypertext#create_if_no_alternates_exists = 1
let g:pandoc#folding#fold_fenced_codeblocks = 1

"----------------------------------------------------------------------------------
" Markdown-Preview {{{1
"----------------------------------------------------------------------------------
let g:mkdp_browser = 'google-chrome-stable'
let g:mkdp_auto_close = 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {}
    \ }
nnoremap <F8> :MarkdownPreview<CR>


"----------------------------------------------------------------------------------
" YouCompleteMe {{{1
"----------------------------------------------------------------------------------
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_previous_completion = ['<S-TAB>']
let g:ycm_key_list_stop_completion = ['<C-y>']
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_max_num_candidates = 20
let g:ycm_complete_in_comments = 1

if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.pandoc = ['@']

let g:ycm_filetype_blacklist = {}

" Movement Key Remaps
" Prevents Up and Down key to be used as scrolling selections
inoremap <expr> <Up> pumvisible() ? '<c-y><Up>' : '<Up>'
inoremap <expr> <Down> pumvisible() ? '<c-y><Down>' : '<Down>'

"----------------------------------------------------------------------------------
" UltiSnips {{{1
"----------------------------------------------------------------------------------
" Trigger configuration. You need to change this to something else than <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<a-w>"
let g:UltiSnipsJumpForwardTrigger="<a-w>"
let g:UltiSnipsJumpBackwardTrigger="<a-b>"

"----------------------------------------------------------------------------------
" Suda VIM
"----------------------------------------------------------------------------------
let g:suda#prompt = 'Magic Words: '
let g:suda_smart_edit = 1

"----------------------------------------------------------------------------------
" Folding {{{1
"----------------------------------------------------------------------------------
fu! CustomFoldText()
    " get first non-blank line
    let fs = v:foldstart
    while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
    endwhile
    if fs > v:foldend
        let line = getline(v:foldstart)
    else
        let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
    endif
    let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
    let foldSize = 1 + v:foldend - v:foldstart
    let foldSizeStr = " " . foldSize . " lines "
    let foldLevelStr = repeat("+--", v:foldlevel)
    let lineCount = line("$")
    let foldPercentage = printf("[%.1f", (foldSize*1.0)/lineCount*100) . "%] "
    let expansionString = repeat(".", w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))
    return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
endf

" set custom fold text to system
set foldtext=CustomFoldText()
