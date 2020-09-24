" Navigate
 nnoremap <C-J> <C-W><C-J>
 nnoremap <C-K> <C-W><C-K>
 nnoremap <C-L> <C-W><C-L>
 nnoremap <C-H> <C-W><C-H>
 noremap <up> <nop>
 noremap <down> <nop>
 noremap <left> <nop>
 noremap <right> <nop>
 "Yank to end of line
 map Y y$
 autocmd filetype python noremap <buffer> <f10> :ALEFix<cr>
 autocmd filetype tex noremap <buffer> <f10> :VimtexCompile<cr>
 autocmd filetype markdown noremap <buffer> <f10> :MarkdownPreview <cr>
 noremap <buffer> <f3> :History: <cr>
 tnoremap <C-q> <c-\><c-n>
