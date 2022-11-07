bindkey -e #ption キーを bindkey に使う
zmodload zsh/complist #"bindkey -M menuselect"設定できるようにするためのモジュールロード
bindkey -v '^a' beginning-of-line # 行頭へ(menuselectでは補完候補の先頭へ)
bindkey -v '^b' backward-char     # 1文字左へ(menuselectでは補完候補1つ左へ)
bindkey -v '^e' end-of-line       # 行末へ(menuselectでは補完候補の最後尾へ)
bindkey -v '^f' forward-char      # 1文字右へ(menuselectでは補完候補1つ右へ)
bindkey -v '^h' backward-delete-char # 1文字削除(menuselectでは絞り込みの1文字削除)
bindkey -v '^i' expand-or-complete   # 補完開始
bindkey -M menuselect '^g' .send-break   # send-break2回分の効果
bindkey -M menuselect '^i' forward-char  # 補完候補1つ右へ
bindkey -M menuselect '^j' .accept-line  # accept-line2回分の効果
bindkey -M menuselect '^k' accept-and-infer-next-history # 次の補完メニューを表示する
bindkey -M menuselect '^n' down-line-or-history               # 補完候補1つ下へ
bindkey -M menuselect '^p' up-line-or-history                 # 補完候補1つ上へ
bindkey -M menuselect '^r' history-incremental-search-forward # 補完候補内インクリメンタ>ルサーチ
zle -N peco-history-selection
bindkey '^R' peco-history-selection
bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward

