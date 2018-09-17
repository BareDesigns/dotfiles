"  ___   __    _  ___   _______        __   __  ___   __   __
" |   | |  |  | ||   | |       |      |  | |  ||   | |  |_|  |
" |   | |   |_| ||   | |_     _|      |  |_|  ||   | |       |
" |   | |       ||   |   |   |        |       ||   | |       |
" |   | |  _    ||   |   |   |   ___  |       ||   | |       |
" |   | | | |   ||   |   |   |  |   |  |     | |   | | ||_|| |
" |___| |_|  |__||___|   |___|  |___|   |___|  |___| |_|   |_|


"Misc. Vim settings
	set noundofile
	set nocompatible
	set relativenumber
	set laststatus=2
	set bs=2
	syntax enable


"For use with Vim-Commenter. Sets AHK comment type
autocmd FileType autohotkey setlocal commentstring=;\ %s
nnoremap <F1> :lcd %:p:h <CR>

"Key Remaps
	map <Space> <leader>
	let mapleader = "\<Space>"
	nnoremap = :w! <CR>
	nnoremap <leader>q :q <CR>
	nnoremap <leader>n :NERDTreeToggle <CR>
	nnoremap <leader>t :TagbarToggle <CR>
	nnoremap <leader>jt :NeoTexOn <CR>
	nnoremap <leader>rf :RMarkdown pdf <CR>
	autocmd GUIEnter * set t_vb=
	autocmd GUIEnter * WToggleClean
   	imap jk <ESC> <CR>
	let g:SuperTabDefaultCompletionType = "<c-n>"


"Vim_Plug
call plug#begin('~/.local/share/nvim/site/autoload/')

	"Themes
	Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'dylanaraps/wal.vim'
	Plug 'altercation/vim-colors-solarized'
	Plug 'whatyouhide/vim-gotham'
	Plug 'arcticicestudio/nord-vim'
	Plug 'chriskempson/base16-vim'

	"Python
	Plug 'w0rp/ale'
	Plug 'majutsushi/tagbar'
	Plug 'Yggdroot/indentLine'
	Plug 'ervandew/supertab'
	
	"Tex and Markdown
	Plug 'donRaphaco/neotex', { 'for': 'tex'}
	Plug 'tmhedberg/SimpylFold' 
	Plug 'vim-scripts/indentpython'
	Plug 'vim-pandoc/vim-pandoc'
	Plug 'vim-pandoc/vim-pandoc-syntax'
	Plug 'vim-pandoc/vim-rmarkdown'
	
	"Aesthetics
	Plug 'itchyny/lightline.vim'
	Plug 'ryanoasis/vim-devicons'

	"NCM
	Plug 'ncm2/ncm2'
	Plug 'roxma/nvim-yarp'
	Plug 'ncm2/ncm2-bufword'
	Plug 'ncm2/ncm2-jedi'
	Plug 'ncm2/ncm2-markdown-subscope'
	Plug 'ncm2/ncm2-match-highlight'
	Plug 'ncm2/ncm2-ultisnips'
	Plug 'ncm2/ncm2-markdown-subscope'
	Plug 'ncm2/ncm2-path'

	"MISC
	Plug 'junegunn/goyo.vim'
	Plug 'tpope/vim-commentary'
	Plug 'vimwiki/vimwiki'
	Plug 'jiangmiao/auto-pairs'
	Plug 'SirVer/ultisnips'
	Plug 'scrooloose/nerdtree'
	Plug 'tpope/vim-surround'

call plug#end()

" Change VimWiki from syntax to Markdown
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

"Themes_and_Numbers
	set nu
	set guifont=Source\ Code\ Pro:h12		"Font size change for GVim
	set foldmethod=indent
	set cursorline
	set go-=m
	set go-=T
	set go-=r
	set background=dark
	" set termguicolors
	colorscheme wal
	set vb t_vb=
	let g:python_host_prog=('/usr/local/bin/python2.7')
	let g:python3_host_prog=('/usr/local/bin/python3.7')
	if !has("gui_running")
		set nocursorline
		inoremap <Char-0x07F> <BS>
		nnoremap <Char-0x07F> <BS>
	endif
	autocmd BufEnter * call ncm2#enable_for_buffer()
	set completeopt=noinsert,menuone,noselect

	let g:ncm2#match_highlight = 'bold'
	let g:ncm2#match_highlight = 'sans-serif'
	let g:ncm2#match_highlight = 'sans-serif-bold'
	let g:ncm2#match_highlight = 'mono-space'


"Lightline
	let g:lightline = {
	  \   'colorscheme': 'jellybeans',
	  \   'active': {
	  \     'left':[ [ 'mode', 'paste' ],
	  \              [ 'gitbranch', 'readonly', 'filename', 'modified' ]
	  \     ]
	  \   },
		\   'component': {
		\     'lineinfo': ' %3l:%-2v',
		\   },
	  \   'component_function': {
	  \     'gitbranch': 'fugitive#head',
	  \   }
	  \ }
	let g:lightline.separator = {
		\   'left': '', 'right': ''
	  \}
	let g:lightline.subseparator = {
		\   'left': '', 'right': '' 
	  \}

    
"SNIPPETS
	let g:UltiSnipsSnippetsDir = "~/UltiSnips/"
	set rtp^=$HOME
	let g:UltiSnipsExpandTrigger="<tab>"
	let g:UltiSnipsJumpForwardTrigger="<tab>"
	let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


"LATEX
	filetype plugin on
	set conceallevel=2
	set concealcursor=nvc
	set shellslash
	set grepprg=grep\ -nH\ $*
	filetype indent on
	let g:vimtex_enabled = 1
	let g:tex_flavor= 'latex'
	let g:tex_fast= 'cmMprs'
	let g:tex_conceal = ''
	let g:text_fold_enabled = 1
	let g:text_comment_nospell = 1
	let g:vimtex_view_general_viewer = 'SumatraPDF'
	map <F6> :setlocal spell spelllang=en_us<CR>
	vnoremap <Space><Space> <Esc>/<Enter>"_c4l
	map <Space><Space> <Esc>/<++><Enter>"_c4l
	set tw=80						"Set line length default as 80. Mostly for Python and sometimes AHK
	autocmd BufNewFile,BufRead *.tex,*.txt set tw=100	"Let linelength for .tex and .txt files

"Python Configs
	set foldlevel=99
	let g:SimpylFold_docstring_preview = 1
	set clipboard=unnamed
	let g:ale_python_flake8_executable = 'python3.7'
	let g:ale_python_flake8_options = '-m flake8'
	highlight ALEErrorSign ctermbg=cyan
	highlight ALEWarningSign ctermbg=cyan
	let g:ale_sign_error = '>>'
	let g:ale_sign_warning = '--'


au BufNewFile,BufRead *.py,*ahk
	\ set tabstop=4		|
	\ set softtabstop=4	|
	\ set shiftwidth=4	|
	\ set expandtab		|
	\ set foldmethod=indent |
	\ set autoindent	|
	\ set fileformat=unix	|
	\ set encoding=utf-8
