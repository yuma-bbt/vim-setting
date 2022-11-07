"インサートモードでの移動
imap <C-a>  <Home>
imap <C-e>  <End>
imap <C-b>  <Left>
imap <C-f>  <Right>
imap <C-n>  <Down>
imap <C-p>  <UP>
imap <C-h>  <BS>
"折返しをjkで移動
nmap j gj
nmap k gk
"makeのショートカット
nnoremap <F6> :w<CR>:make build<CR>
inoremap <F6> <Esc>:w<CR>:make build<CR>
nnoremap <F5> :w<CR>:make run<CR>
inoremap <F5> <Esc>:w<CR>:make run<CR>
"ペーストモードへ移行
map <C-\> :set paste<CR>
map <C-^> :set nopaste<CR>
"cocの関数ジャンプ
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
