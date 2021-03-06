call plug#begin('~/.vim/plugged')
	Plug 'rafi/awesome-vim-colorschemes'
	Plug 'neoclide/coc.nvim'
	Plug 'tpope/vim-surround'
	Plug 'tmsvg/pear-tree'
	Plug 'weirongxu/coc-explorer'
	Plug 'itchyny/lightline.vim'
	Plug 'itchyny/vim-gitbranch'

let g:deoplete#enable_at_startup = 1
call plug#end()

let g:coc_global_extensions = ['coc-prettier', 'coc-tsserver', 'coc-solargraph', 'coc-sh', 'coc-pyright', 'coc-json', 'coc-html', 'coc-css', 'coc-cmake', 'coc-clangd']


let g:RelativeNumbers=0

colorscheme sierra
highlight LineNr ctermfg=grey ctermbg=NONE
highlight Normal guibg=NONE ctermbg=NONE

let g:leader = '\<space>'
set hidden
set wrap
set encoding=utf-8
set autoindent
set ruler "show cursur att al time
set number
set clipboard=unnamedplus "cp in and out
set mouse-=a
set softtabstop=4
set colorcolumn=80

let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'helloworld','gitbranch' ] ]
      \ },
      \ 'component_function': {
      \	    'gitbranch': 'gitbranch#name'
      \ },
      \ }

"switch beetwen buffers
nnoremap <TAB> :tabnext<CR>
nnoremap <S-TAB> :tabprevious<CR>

"tabing
vnoremap < <gv
vnoremap > >gv

nmap <c-R> :call ToggleRelativeNumbers()<cr>

function! ToggleRelativeNumbers()
    if g:RelativeNumbers
		let g:RelativeNumbers=0
		:set nornu
    else
        let g:RelativeNumbers=1
        :set rnu
    endif
endfunction

nnoremap <A-down> :m .+1<CR>==
nnoremap <A-up> :m .-2<CR>==
inoremap <A-down> <Esc>:m .+1<CR>==gi
inoremap <A-up> <Esc>:m .-2<CR>==gi
vnoremap <A-down> :m '>+1<CR>gv=gv
vnoremap <A-up> :m '<-2<CR>gv=gv

":CocInstall coc-explorer  
nmap <space>e :CocCommand explorer<CR>

"CocPrettier
nmap <space>f :CocCommand prettier.formatFile<CR>
