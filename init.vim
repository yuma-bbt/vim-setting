set runtimepath+=~/.config/nvim/
set nocompatible
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set t_Co=256 " ターミナル：ターミナルで256色表示を使う
set updatetime=300
set shortmess+=I "" 起動時のメッセージを消す
set cmdheight=2
set laststatus=2
filetype off
filetype plugin indent on
syntax enable
"taglist
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1

hi Pmenu guifg=#f8f6f2 ctermfg=15 guibg=#35322d ctermbg=236
hi PmenuSel guifg=#000000 ctermfg=16 gui=bold cterm=bold
hi PmenuSbar guibg=#35322d ctermbg=236
hi PmenuThumb guifg=#d9cec3 ctermfg=252

"imap <ESC>< <ESC>ggi
"vim_markdown_folding_disabled"imap <ESC>> <ESC>Gi
syntax on
set number
set backspace=2
set noswapfile
set fileencodings=utf-8,iso-2022-jp,cp932,sjis,euc-jp
au BufRead,BufNewFile *.md set filetype=markdown
let g:vim_markdown_folding_disabled=1

nnoremap <silent> <C-@> :PrevimOpen<CR> " Ctrl-pでプレビュー

runtime! plugs.vim
runtime! keymap.vim
runtime! screen_color.vim
runtime! syntastic_setting.vim
runtime! NERDTree.vim
runtime! tagbar.vim
