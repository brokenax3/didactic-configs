"------------------------------------------------------------
"    __    __  _   __  __   ____    ____
"    \ \  / / | | |  \/  | |    |  |  __|
"  _  \ \/ /  | | | |\/| | |    |  | |__
" |_|  \__/   |_| |_|  |_| |_|\_\  |____| 
"
"------------------------------------------------------------
" Plug Settings
"------------------------------------------------------------
call plug#begin('~/.vim/plugged')

" General Vim Plugins
Plug 'godlygeek/tabular'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'farmergreg/vim-lastplace'
Plug 'ycm-core/YouCompleteMe'
Plug 'jkramer/vim-checkbox'
Plug 'sheerun/vim-polyglot'
Plug 'unfog-io/unfog-vim'

" Theme Plugins
Plug 'sainnhe/gruvbox-material'
Plug 'itchyny/lightline.vim'

" Vim-markdown
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" FZF 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


" Initialize plugin system
call plug#end()
set nocompatible
filetype indent plugin on
set clipboard=unnamedplus
set conceallevel=2
autocmd BufEnter * silent! lcd %:p:h

" Enable syntax highlighting
syntax on
set hidden
set spelllang=en_au

" Better command-line completion
set wildmenu
 
" Show partial commands in the last line of the screen
set showcmd
 
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

"------------------------------------------------------------
" Colourscheme Settings
"------------------------------------------------------------
"set termguicolors
set termguicolors
set background=dark
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_palette = 'mix'
colorscheme gruvbox-material

" Lightline Stuff
let g:lightline = {'colorscheme' : 'gruvbox_material'}

"------------------------------------------------------------
" Vim-Markdown Settings
"------------------------------------------------------------
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_edit_url_in = 'tab'
let g:vim_markdown_no_extensions_in_markdown = 0
let g:vim_markdown_math = 1
let g:vim_markdown_folding_level = 2
let g:tex_conceal = ""
let g:vim_markdown_autowrite = 1
let g:vim_markdown_toc_autofit = 1

"------------------------------------------------------------
" Markdown-Preview Settings
"------------------------------------------------------------
let g:mkdp_browser = 'firefox'
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

"------------------------------------------------------------
" YouCompleteMe Settings
"------------------------------------------------------------
let g:ycm_filetype_blacklist = {}
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_previous_completion = ['<S-TAB>']
let g:ycm_key_list_stop_completion = ['<C-y>']
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_max_num_candidates = 20
let g:ycm_complete_in_comments = 1

" Python Settings
let g:ycm_python_interpreter_path = '/usr/bin/python'
let g:ycm_python_sys_path = ['/home/mark/.local/lib/python3.8/site-packages']
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'

" Movement Key Remaps
" Prevents Up and Down key to be used as scrolling selections
inoremap <expr> <Up> pumvisible() ? '<c-y><Up>' : '<Up>'
inoremap <expr> <Down> pumvisible() ? '<c-y><Down>' : '<Down>'

"------------------------------------------------------------
" Vim-Polygot Settings
"------------------------------------------------------------

let g:polyglot_disabled = ['markdown']
au BufRead,BufNewFile *.m set filetype=octave
"------------------------------------------------------------
" Usability options {{{1
"------------------------------------------------------------
set ignorecase
set smartcase
 
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
 
" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline
 
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
 
" Always display the status line, even if only one window is displayed
set laststatus=2
 
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
 
" Use visual bell instead of beeping when doing something wrong
set visualbell
 
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=
 
" Enable use of the mouse for all modes
set mouse=a
 
" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2
 
" Display line numbers on the left
set number relativenumber
 
" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
 
" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

:let g:netrw_browsex_viewer= "xdg-open"

"------------------------------------------------------------
" Gui Options
"
"------------------------------------------------------------
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guifont=Hack\ 11

" Cursor Settings
" Disable all blinking:
set guicursor+=a:blinkon0

"------------------------------------------------------------
" Indentation options {{{1
"------------------------------------------------------------
" Indentation settings according to personal preference.
 
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab
 
"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings
"------------------------------------------------------------
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$
 
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

" Allows to save files as sudo when not running vim as root.
cmap w!! w !sudo tee > /dev/null %

"------------------------------------------------------------
" Tab Operations
"------------------------------------------------------------
nnoremap <C-N> :tabnew .<CR>
nnoremap <C-F4> :tabclose<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

"------------------------------------------------------------
