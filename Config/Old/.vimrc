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

" Plug Settings {{{1
"------------------------------------------------------------
call plug#begin('~/.vim/plugged')

" General Vim Plugins
Plug 'godlygeek/tabular'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'farmergreg/vim-lastplace'
Plug 'ycm-core/YouCompleteMe'
Plug 'sheerun/vim-polyglot'
Plug 'Konfekt/FastFold'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-startify'

" Snippets Engine and default snippets
Plug 'SirVer/ultisnips'

" Theme Plugins
Plug 'itchyny/lightline.vim'
"Plug 'joshdick/onedark.vim'
Plug '~/.vim/plugged/onebliss.vim'

" Vim-markdown
"Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-pandoc'

" FZF 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Initialize plugin system
call plug#end()

" Vim Settings {{{1
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
" Usability options {{{3
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

set foldmethod=marker
let g:netrw_browsex_viewer= "xdg-open"

"------------------------------------------------------------
" Indentation options {{{3
"------------------------------------------------------------
" Indentation settings according to personal preference.
 
" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab
 
"------------------------------------------------------------

"------------------------------------------------------------
" Gui Options {{{1
"------------------------------------------------------------
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guifont=Terminus\ Medium\ 12
set display+=lastline
set noshowmode

" Cursor Settings
" Disable all blinking:
set guicursor+=a:blinkon0

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

" Mapping a leader
let maplocalleader="\\"

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

" Save
inoremap <C-s>     <C-O>:update<cr>
nnoremap <C-s>     :update<cr>
nnoremap <leader>s :update<cr>
nnoremap <leader>w :update<cr>

"------------------------------------------------------------
" Moving Lines
"------------------------------------------------------------
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi

"------------------------------------------------------------
" Shortcuts
"------------------------------------------------------------
" Table of contents
nnoremap <silent> <leader>t :Tocv<CR>:execute('vertical resize ' . 40)<CR>
" Strip whitespaces and convert to a filename
vnoremap <silent> <leader>w :s/\%V //g<CR>:nohl<CR>
" Buffer fzf
nnoremap <silent> <leader>e :Buffers<CR>
" Pandoc Convert to pdf
nnoremap <silent> <leader>pp :Pandoc! pdf --toc --toc-depth=4 -V geometry:margin=1in -f markdown-raw_tex<CR>
nnoremap <silent> <leader>pd :Pandoc! docx -V geometry:margin=1in -f markdown-raw_tex<CR>

"------------------------------------------------------------
" Vim sessions
"------------------------------------------------------------
"let g:sessions_dir = '~/vim-sessions'
"nnoremap <Leader>ss :mksession! . g:session_dir . '/*.vim<C-D><BS><BS><BS><BS><BS>
"nnoremap <Leader>sr :so . g:session_dir. '/*.vim<C-D><BS><BS><BS><BS><BS>'

" Colourscheme {{{1
"------------------------------------------------------------
"set termguicolors
let g:onebliss_terminal_italics=1
set background=dark
"
"let g:onedark_color_overrides = {
"\ "black": {"gui": "#161822", "cterm": "235", "cterm16": "0" },
"\ "menu_grey": { "gui": "#282C34", "cterm": "237", "cterm16": "8" },
"\ "visual_grey": { "gui": "#282C34", "cterm": "237", "cterm16": "8" },
"\ "vertsplit": { "gui": "#ABB2BF", "cterm": "59", "cterm16": "15" }
"\}
"
"colorscheme onedark
colorscheme onebliss

" Lightline Stuff
let g:lightline = {
  \ 'colorscheme': 'onebliss',
  \ }

" Onedark Settings {{{2
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

"------------------------------------------------------------
" Vim-Markdown {{{1
"------------------------------------------------------------
let g:vim_markdown_folding_style_pythonic = 0
let g:vim_markdown_override_foldtext = 1
let g:vim_markdown_edit_url_in = 'tab'
let g:vim_markdown_no_extensions_in_markdown = 0
let g:vim_markdown_math = 1
let g:vim_markdown_folding_level = 6
"let g:tex_conceal = ""
let g:vim_markdown_autowrite = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_follow_anchor = 1


"------------------------------------------------------------
" Vim-Pandoc-Markdown {{{1
"------------------------------------------------------------
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

"------------------------------------------------------------
" Markdown-Preview {{{1
"------------------------------------------------------------
let g:mkdp_browser = 'google-chrome-stable'
let g:mkdp_auto_close = 0
let g:mkdp_command_for_global = 1
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

nnoremap <F8> :MarkdownPreview<CR>


"------------------------------------------------------------
" YouCompleteMe {{{1
"------------------------------------------------------------
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
" Vim-Polygot {{{1
"------------------------------------------------------------
" let g:polyglot_disabled = ['']
au BufRead,BufNewFile *.m set filetype=octave

"------------------------------------------------------------
" UltiSnips {{{1
"------------------------------------------------------------
" Trigger configuration. You need to change this to something else than <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<a-w>"
let g:UltiSnipsJumpForwardTrigger="<a-w>"
let g:UltiSnipsJumpBackwardTrigger="<a-b>"

"------------------------------------------------------------
" Folding {{{1
"------------------------------------------------------------
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
