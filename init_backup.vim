 set nocompatible              " be iMproved, required
 filetype off                  " required
 set nohidden
 call plug#begin()
 Plug 'flazz/vim-colorschemes'
 Plug 'morhetz/gruvbox'
 Plug 'rakr/vim-one'
 Plug 'liuchengxu/vista.vim'
 Plug 'vim-scripts/indentpython.vim'
 Plug 'lervag/vimtex'
 "Plug 'vim-python/python-syntax'
 Plug 'tpope/vim-fugitive'
 Plug 'tpope/vim-surround'
 Plug 'tmhedberg/SimpylFold'
 Plug 'ap/vim-css-color'
 Plug 'reedes/vim-pencil'
 Plug 'dbmrq/vim-ditto'
 Plug 'chrisbra/csv.vim'
 Plug 'jupyter-vim/jupyter-vim', {'on': 'JupyterConnect'}
 if has('nvim')
   Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
 else
 endif
 Plug 'Shougo/defx.nvim'
 Plug 'roxma/nvim-yarp'
 Plug 'roxma/vim-hug-neovim-rpc'
 Plug 'enricobacis/vim-airline-clock'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'majutsushi/tagbar' 
 Plug 'Yggdroot/indentLine'
 Plug 'kristijanhusak/defx-icons'
 Plug 'scrooloose/nerdcommenter'
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'jiangmiao/auto-pairs'
 "Plug 'tell-k/vim-autopep8'
 Plug 'gabrielelana/vim-markdown'
 Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
 Plug 'luochen1990/rainbow'
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'junegunn/fzf.vim'
 Plug 'sirver/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'dense-analysis/ale'
 Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
 call plug#end()
 syntax enable
 filetype on
 set incsearch
 set inccommand=nosplit
 set nohls
 let mapleader = "\<Space>"
 let maplocalleader = "`"
 set number
 set relativenumber
 set encoding=utf-8
 set autoindent
 set smartindent
 set scrolloff=4
 set showmatch
 au Filetype python set tabstop=4
 au Filetype python set softtabstop=4
 au Filetype python set shiftwidth=4
 au Filetype python set textwidth=79
 au Filetype python set expandtab
 au Filetype python set autoindent
 au Filetype python set fileformat=unix
 autocmd Filetype python set foldmethod=indent
 autocmd Filetype python set foldlevel=99
 au Filetype markdown set tabstop=4
 au Filetype markdown set softtabstop=4
 au Filetype markdown set textwidth=87
 au Filetype markdown set shiftwidth=4
 au Filetype markdown set expandtab
 au Filetype markdown set autoindent
 au Filetype tex set textwidth=78
 au Filetype tex colorscheme OceanicNext
 au Filetype tex AirlineTheme base16
 au Filetype tex set nocursorline
 au Filetype tex set nornu
 au Filetype tex :NoMatchParen
 let python_highlight_all = 1
 let g:rainbow_active = 1
 nnoremap <C-J> <C-W><C-J>
 nnoremap <C-K> <C-W><C-K>
 nnoremap <C-L> <C-W><C-L>
 nnoremap <C-H> <C-W><C-H>
 map Y y$
 set laststatus=2
 set background=dark
 set termguicolors
 colorscheme gruvbox
 "hi Normal ctermbg=NONE guibg=NONE
 let g:airline_theme='wombat'
 let g:airline_powerline_fonts=1
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#clock#auto = 0
 let g:airline#extensions#ale#enabled = 1
 set foldmethod=indent
 function! AirlineInit()
   let g:airline_section_a = airline#section#create(['clock', g:airline_symbols.space, g:airline_section_a])
 endfunction
 autocmd User AirlineAfterInit call AirlineInit()
 call airline#parts#define_accent('clock', 'bold')
 let g:ale_fixers = {
     \ 'python':['yapf'],
     \ 'markdown':['prettier']
     \ }
 let g:ale_linters = {
     \ 'markdown':['mdl']
     \ }
 let g:ale_fix_on_save = 1
 
 
 " defx config
 nnoremap <F2> :Defx<CR>
 call defx#custom#option('_', {
       \ 'columns': 'indent:git:icons:filename',
       \ 'winwidth': 30,
       \ 'split': 'vertical',
       \ 'direction': 'topleft',
       \ 'show_ignored_files': 0,
       \ 'buffer_name': '',
       \ 'toggle': 1,
       \ 'resume': 1
       \ })
 autocmd FileType defx call s:defx_my_settings()
 function! s:defx_my_settings() abort
     nmap <silent><buffer><expr> t defx#do_action('open_or_close_tree')
     nnoremap <silent><buffer><expr> <CR>
 	  \ defx#do_action('open')
     nnoremap <silent><buffer><expr> N
 	  \ defx#do_action('new_file')
     nnoremap <silent><buffer><expr> r
       \ defx#do_action('rename')
     nnoremap <silent><buffer><expr> T
 	  \ defx#do_action('cd', '..')
     nnoremap <silent><buffer><expr> ~
 	  \ defx#do_action('cd')
     nnoremap <silent><buffer><expr> yy
 	  \ defx#do_action('yank_path')
 endfunction
 nmap <f12> :Vista!!<cr>
 let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
 let g:vista_default_executive = 'ctags'
 let g:vista_fzf_preview=['right:50%']
 let g:defx_icons_enable_syntax_highlight = 1
 let g:defx_icons_column_length = 2
 let g:defx_icons_directory_icon = ''
 let g:defx_icons_mark_icon = '*'
 let g:defx_icons_parent_icon = ''
 let g:defx_icons_default_icon = ''
 let g:defx_icons_directory_symlink_icon = ''
 " options below are applicable only when using "tree" feature
 let g:defx_icons_root_opened_tree_icon = ''
 let g:defx_icons_nested_opened_tree_icon = ''
 let g:defx_icons_nested_closed_tree_icon = ''
 let g:elite_mode=1
 set backspace=indent,eol,start
 " autopep8
 let g:autopep8_disable_show_diff=1
 autocmd filetype python noremap <buffer> <f10> :ALEFix<cr>
 autocmd filetype tex noremap <buffer> <f10> :VimtexCompile<cr>
 autocmd filetype markdown noremap <buffer> <f10> :Markdownpreview <cr>
 let g:vim_markdown_conceal = 0
 let g:vim_markdown_toc_autofit = 1
 let g:vim_markdown_math = 1
 " disable arrow keys
 noremap <up> <nop>
 noremap <down> <nop>
 noremap <left> <nop>
 noremap <right> <nop>
 " set tagbar sort by order of appearance in default
 let g:tagbar_sort = 0
 let g:tagbar_width = 30
 "augroup autosavefolds
   "autocmd!
   "autocmd BufWinLeave * mkview
   "autocmd BufWinEnter * silent loadview
 "augroup END
 let g:vimtex_view_method = "zathura"
 let g:vimtex_view_general_options = '-r @line @pdf @tex'
 let g:vimtex_compiler_callback_hooks = ['UpdateSkim']
 let g:tex_concealcursor = "n"
 let g:tex_conceal = 'admgs'
 function! UpdateSkim(status)
     if !a:status | return | endif
 
     let l:out = b:vimtex.out()
     let l:tex = expand('%:p')
     let l:cmd = [g:vimtex_view_general_viewer, '-r']
     if !empty(system('pgrep Skim'))
     call extend(l:cmd, ['-g'])
     endif
     if has('nvim')
     call jobstart(l:cmd + [line('.'), l:out, l:tex])
     elseif has('job')
     call job_start(l:cmd + [line('.'), l:out, l:tex])
     else
     call system(join(l:cmd + [line('.'), shellescape(l:out), shellescape(l:tex)], ' '))
     endif
 endfunction
 let g:tex_flavor = "latex"
 let g:tex_fast = "bmMp"
 let g:vimtex_quickfix_open_on_warning = 0
 let g:vimtex_quickfix_mode = 2
 let g:vimtex_compiler_latexmk = {
     \ 'options' : [
     \   '-xelatex',
     \   '-verbose',
     \   '-file-line-error',
     \   '-synctex=1',
     \   '-interaction=nonstopmode',
     \ ],
     \}
 let g:vimtex_complete_recursive_bib = 1
 let g:pencil#wrapModeDefault = 'soft'
 augroup pencil
 	autocmd!
 	autocmd FileType markdown,mkd call pencil#init()
 	autocmd FileType tex call pencil#init()
 augroup END
 let g:pencil#textwidth = 72
 "let g:tex_fast = 'bMpr'
 " Use autocmds to check your text automatically and keep the highlighting
 " up to date (easier):
 au FileType markdown,text,tex DittoOn  " Turn on Ditto's autocmds
 nmap <leader>di <Plug>ToggleDitto      " Turn Ditto on and off
 
 " If you don't want the autocmds, you can also use an operator to check
 " specific parts of your text:
 " vmap <leader>d <Plug>Ditto	       " Call Ditto on visual selection
 " nmap <leader>d <Plug>Ditto	       " Call Ditto on operator movement
 
 nmap =d <Plug>DittoNext                " Jump to the next word
 nmap -d <Plug>DittoPrev                " Jump to the previous word
 nmap +d <Plug>DittoGood                " Ignore the word under the cursor
 nmap _d <Plug>DittoBad                 " Stop ignoring the word under the cursor
 nmap ]d <Plug>DittoMore                " Show the next matches
 nmap [d <Plug>DittoLess                " Show the previous matches
 
 let g:csv_autocmd_arrange = 1
 let b:csv_arrange_align = 'l*'
 
 let g:UltiSnipsExpandTrigger = '<localleader><tab>'
 let g:UltiSnipsJumpForwardTrigger = '<localleader><tab>'
 let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
 set clipboard=unnamed
 
 " COC
 let g:coc_global_extensions = ['coc-python', 'coc-snippets', 'coc-markdownlint', 'coc-highlight', 'coc-vimtex']
 set cmdheight=1
 set updatetime=300
 set signcolumn=yes
 inoremap <expr><Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
 inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>" 
 function! s:check_back_space() abort
 	let col = col('.') - 1
 	return !col || getline('.')[col - 1] =~# '\s'
 endfunction
 inoremap <silent><expr> <TAB>
       \ pumvisible() ? "\<C-n>" :
       \ <SID>check_back_space() ? "\<TAB>" :
       \ coc#refresh()
 inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
 inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
 autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
 nmap <silent> gd <Plug>(coc-definition)
 nmap <silent> gy <Plug>(coc-type-definition)
 nmap <silent> gi <Plug>(coc-implementation)
 nmap <silent> gr <Plug>(coc-references)
 " Use K to show documentation in preview window
 nnoremap <silent> K :call <SID>show_documentation()<CR>
 function! s:show_documentation()
 	if (index(['vim','help'], &filetype) >= 0)
 		execute 'h '.expand('<cword>')
 	else
 		call CocAction('doHover')
 	endif
 endfunction
 " Add status line support, for integration with other plugin, checkout `:h coc-status`
