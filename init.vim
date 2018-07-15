"Misc. Vim settings
	set noundofile
	set nocompatible
	set relativenumber
	set laststatus=2
	set bs=2
	set termguicolors
	syntax enable


"For use with Vim-Commenter. Sets AHK comment type
autocmd FileType autohotkey setlocal commentstring=;\ %s
nnoremap <F1> :lcd %:p:h <CR>

"Key Remaps
	map <Space> <leader>
	let mapleader = "\<Space>"
	nnoremap <leader>8 :!py % <CR>
	nnoremap <leader>9 :w !py <CR>
	nnoremap = :w! <CR>
	nnoremap <LEADER>gs :Gstatus <cr>
	nnoremap <leader>gc :Gcommit <CR>
	nnoremap <leader>gp :Gpush <CR>
	nnoremap <leader>q :q <CR>
	nnoremap <leader>n :NERDTreeToggle <CR>
	nnoremap <leader>t :TagbarToggle <CR>
	nnoremap <leader>jt :NeoTexOn <CR>
	autocmd BufEnter *.md exe 'nnoremap <leader>md :!open -a "Shiba" %:p<CR>'
	autocmd GUIEnter * set t_vb=
	autocmd GUIEnter * WToggleClean
   	imap jk <ESC> <CR>

"Vim_Plug
call plug#begin('~/.local/share/nvim/site/autoload/')

	Plug 'donRaphaco/neotex', { 'for': 'tex'}
	Plug 'roxma/nvim-completion-manager'
	Plug 'dylanaraps/wal.vim'
	Plug 'tmhedberg/SimpylFold' 
	Plug 'vim-scripts/indentpython'
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-commentary'
	Plug 'w0rp/ale'
	Plug 'vimwiki/vimwiki'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'jiangmiao/auto-pairs'
	Plug 'SirVer/ultisnips'
	Plug 'majutsushi/tagbar'
	Plug 'scrooloose/nerdtree'
	Plug 'ryanoasis/vim-devicons'
        Plug 'maralla/completor.vim'
	Plug 'airblade/vim-gitgutter'
	Plug 'Yggdroot/indentLine'
	Plug 'vim-pandoc/vim-pandoc'
	Plug 'vim-pandoc/vim-pandoc-syntax'
	Plug 'vim-pandoc/vim-rmarkdown'
	Plug 'ervandew/supertab'

call plug#end()

let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

"Themes_and_Numbers
	set nu
	set guifont=Source\ Code\ Pro:h12		"Font size change for GVim
	set foldmethod=indent
	colorscheme wal
	set cursorline
	set go-=m
	set go-=T
	set go-=r
	set vb t_vb=

	if !has("gui_running")
		set nocursorline
	 	inoremap <Char-0x07F> <BS>
	 	nnoremap <Char-0x07F> <BS>
	endif
    
"SNIPPETS
" let g:UltiSnipsSnippetsDir='./Snippets'
let g:UltiSnipsSnippetDirectories=['UltiSnips']
let g:UltiSnipsEditSplit="vertical"
set rtp^=$HOME

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

"au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
set completeopt+=menuone

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

au BufNewFile,BufRead *.py,*ahk
	\ set tabstop=4		|
	\ set softtabstop=4	|
	\ set shiftwidth=4	|
	\ set expandtab		|
	\ set foldmethod=indent |
	\ set autoindent	|
	\ set fileformat=unix	|
    set encoding=utf-8
    let python_highlight_all=1