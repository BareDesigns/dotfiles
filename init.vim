 " ___   __    _  ___   _______        __   __  ___   __   __ 
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
	" nnoremap <LEADER>gs :Gstatus <cr>
	" nnoremap <leader>gc :Gcommit <CR>
	" nnoremap <leader>gp :Gpush <CR>
	" nnoremap <leader>q :q <CR>
	nnoremap <leader>n :NERDTreeToggle <CR>
	nnoremap <leader>t :TagbarToggle <CR>
	nnoremap <leader>jt :NeoTexOn <CR>
	nnoremap <leader>z ]s <CR>
	autocmd GUIEnter * set t_vb=
	autocmd GUIEnter * WToggleClean
   	imap jk <ESC> <CR>
	autocmd BufEnter * call ncm2#enable_for_buffer()
	set completeopt=noinsert,menuone,noselect
	let g:SuperTabDefaultCompletionType = "<c-n>"


"Vim_Plug
call plug#begin('~/.local/share/nvim/site/autoload/')

	Plug 'junegunn/goyo.vim'
	Plug 'donRaphaco/neotex', { 'for': 'tex'}
	Plug 'dylanaraps/wal.vim'
	Plug 'tmhedberg/SimpylFold' 
	Plug 'vim-scripts/indentpython'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-commentary'
	Plug 'altercation/vim-colors-solarized'
	Plug 'w0rp/ale'
	Plug 'vimwiki/vimwiki'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'jiangmiao/auto-pairs'
	Plug 'SirVer/ultisnips'
	Plug 'ncm2/ncm2-ultisnips'
	Plug 'majutsushi/tagbar'
	Plug 'scrooloose/nerdtree'
	Plug 'ryanoasis/vim-devicons'
        Plug 'maralla/completor.vim'
	Plug 'airblade/vim-gitgutter'
	Plug 'Yggdroot/indentLine'
	Plug 'vim-pandoc/vim-pandoc'
	Plug 'vim-pandoc/vim-pandoc-syntax'
	Plug 'vim-pandoc/vim-rmarkdown'
	Plug 'jalvesaq/Nvim-R'
	Plug 'ervandew/supertab'
	Plug 'ncm2/ncm2'
	Plug 'roxma/nvim-yarp'
	Plug 'joshdick/onedark.vim'

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
	colorscheme solarized
	set vb t_vb=
	let g:python_host_prog=('/usr/local/bin/python2.7')
	let g:python3_host_prog=('/usr/local/bin/python3.7')
	" let g:airline_theme='wal'
	let g:airline_solarized_bg='dark'
	if !has("gui_running")
		set nocursorline
		inoremap <Char-0x07F> <BS>
		nnoremap <Char-0x07F> <BS>
	endif

    
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
	" let b:ale_linters = ['flake8', 'pylint']
	" let b:ale_fixers = ['autopep8', 'yapf']


au BufNewFile,BufRead *.py,*ahk
	\ set tabstop=4		|
	\ set softtabstop=4	|
	\ set shiftwidth=4	|
	\ set expandtab		|
	\ set foldmethod=indent |
	\ set autoindent	|
	\ set fileformat=unix	|
	\ set encoding=utf-8
