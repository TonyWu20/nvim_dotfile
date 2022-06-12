function! MyHighlights() abort
    highlight SpellBad     cterm=undercurl ctermbg=76  ctermfg=16  gui=UnderCurl guifg=#fb9a99
    highlight SpellRare cterm=underline ctermbg=231 ctermfg=160 gui=underline guifg=#f89000
    hi texItalStyle cterm=italic ctermfg=11 gui=italic guifg=#ffff00
endfunction
augroup MyColors
	autocmd!
	autocmd ColorScheme * call MyHighlights()
augroup END
colorscheme gruvbox8_soft
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
 au Filetype markdown set textwidth=78
 au Filetype markdown set shiftwidth=4
 au Filetype markdown set expandtab
 au Filetype markdown set autoindent
 au Filetype tex set textwidth=78
 au Filetype tex set nocursorline
 au Filetype tex set conceallevel=0
 au Filetype tex set formatoptions+=a
 au Filetype tex set nornu
 au Filetype tex set spell
 au Filetype tex :NoMatchParen
 autocmd filetype python noremap <f12> :Clap tags<cr>
 autocmd filetype python inoremap <f10> <Esc> :ALEFix<cr>
 autocmd filetype tex noremap <buffer> <f10> :VimtexCompile<cr>
 autocmd filetype tex noremap <buffer> <f5> :ALEFix<cr>
 autocmd filetype tex nnoremap <buffer> <F12> :Vista!!<cr>
 autocmd filetype markdown noremap <buffer> <f10> <Esc> :MarkdownPreview <cr>
 autocmd filetype markdown inoremap <f10> <Esc>:MarkdownPreview <cr>
 autocmd filetype markdown inoremap <F5> <Esc> :ALEFix<cr>
 autocmd Filetype C set foldmethod=indent
 autocmd Filetype C set foldlevel=99
 let python_highlight_all = 1

 let g:rainbow_active = 1

 let g:airline_theme='wombat'
 let g:airline_powerline_fonts=1
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#clock#auto = 0
 let g:airline#extensions#ale#enabled = 1
 function! AirlineInit()
   let g:airline_section_a = airline#section#create(['clock', g:airline_symbols.space, g:airline_section_a])
 endfunction
 autocmd User AirlineAfterInit call AirlineInit()
 call airline#parts#define_accent('clock', 'bold')


 let g:ale_fixers = {
     \ 'python':['yapf'],
     \ 'markdown':['prettier'],
     \ 'tex': ['textlint'],
     \ 'c' : ['clang-format']
     \ }
 let g:ale_linters = {
     \ 'markdown':['mdl'],
     \ 'python':['pylint','mypy'],
     \ 'tex': ['proselint']
     \ }
 let g:ale_fix_on_save = 1
 let g:ale_c_clangformat_style_option = "{BasedOnStyle: llvm, IndentWidth: 4, AllowShortFunctionsOnASingleLine : None, KeepEmptyLinesAtTheStartOfBlocks : false, BreakBeforeBraces: Allman}"


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

 let g:clap_layout = { 'relative': 'editor' }
 let g:clap_theme = 'material_design_dark'
 let g:clap_provider_quick_open = {
    \ 'source': ['~/.config/nvim/init.vim', '~/.config/nvim/ftcustom.vim', '~/.config/nvim/plugged.vim', '~/.config/alacritty/alacritty.yml', '~/.config/fish/config.fish'],
    \ 'sink': 'e',
    \ }
 nmap <f12> :Vista finder<cr>
 let g:vista#renderer#enable_icon = 1
 let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
 let g:vista_default_executive = 'ctags'
 let g:vista_executive_for = {'tex': 'coc', 'python': 'coc'}
 let g:vista_fzf_preview=['right:50%']
 let g:fzf_layout = { 'window': 'call OpenFloatingWin()' }
 function! OpenFloatingWin()
 	let height = &lines - 3
 	let width = float2nr(&columns - (&columns * 2 / 10))
 	let col = float2nr((&columns - width) / 2)
 
   " 设置浮动窗口打开的位置，大小等。
   " 这里的大小配置可能不是那么的 flexible 有继续改进的空间
 	let opts = {
 	\ 'relative': 'editor',
 	\ 'row': height * 0.3,
 	\ 'col': col + 30,
 	\ 'width': width * 2 / 3,
 	\ 'height': height / 2
 	\ }
 
 	let buf = nvim_create_buf(v:false, v:true)
 	let win = nvim_open_win(buf, v:true, opts)
 
   " 设置浮动窗口高亮
 	call setwinvar(win, '&winhl', 'Normal:Pmenu')
 
 	setlocal
 		\ buftype=nofile
 		\ nobuflisted
 		\ bufhidden=hide
 		\ nonumber
 		\ norelativenumber
 		\ signcolumn=no
 endfunction

 let g:vim_markdown_conceal = 1
 let g:vim_markdown_toc_autofit = 1
 let g:vim_markdown_math = 1
 let g:mkdp_auto_close = 0

 "let g:mkdp_browser = 'Google Chrome'

 let g:tagbar_sort = 0
 let g:tagbar_width = 30

 let g:vimtex_view_method = "skim"
 let g:vimtex_view_general_options = '-r @line @pdf @tex'
 let VimtexEventCompileSuccess = ['UpdateSkim']
 let g:tex_concealcursor = ""
 let conceallevel=0
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
 let g:vimtex_compiler_progname='nvr'
 let g:vimtex_compiler_latexmk = {
     \ 'options' : [
     \   '-xelatex',
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
 	autocmd FileType tex call pencil#init()|setlocal textwidth=80
 augroup END
 let g:pencil#textwidth = 78
 let g:airline_section_x = '%{PencilMode()}'
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


 let g:coc_global_extensions = ['coc-python', 'coc-snippets', 'coc-clangd', 'coc-ccls','coc-markdownlint', 'coc-highlight', 'coc-vimtex', 'coc-texlab']

 inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

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
 "
 "
 " nvim-ipy
command! -nargs=0 RunQtConsole :call jobstart("jupyter qtconsole --JupyterWidget.include_other_output=True --style=base16_ocean_dark")

let g:ipy_celldef = '^##' " regex for cell start and end

nmap <silent> <leader>jqt :RunQtConsole<Enter>
nmap <silent> <leader>jk :IPython<Space>--existing<Space>--no-window<Enter>
nmap <silent> <leader>jc <Plug>(IPy-RunCell)
nmap <silent> <leader>ja <Plug>(IPy-RunAll)
nmap <silent> <leader>jt <Plug>(IPy-Terminate)

let g:goyo_height = "95%"
let g:UltiSnipsExpandTrigger="<localleader><tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:float_preview#docked = 1

nmap dw de
nmap cw ce
