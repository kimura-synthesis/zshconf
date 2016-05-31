#!/usr/bin/zsh
# -*- coding:utf-8 -*-

autoload -U compinit; compinit
setopt no_beep          ### ビープ音鳴らさない
setopt auto_list        ### 補完リストを表示
setopt list_packed      ### リストを詰めて表示
setopt auto_param_slash ### ディレクトリ名の補完後にスラッシュを付加
setopt auto_menu

zstyle ':completion:*:*files' ignored-patterns '*?.o' '*?~' '*\#'
