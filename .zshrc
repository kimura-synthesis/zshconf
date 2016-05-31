#!/usr/bin/env zsh
# -*- coding:utf-8 -*-

bindkey -e                # emacs keybind
setopt no_beep

setopt auto_cd            # ディレクトリ名だけで cd
setopt auto_pushd         # cd 時に自動的にスタックに pushd
setopt correct            # コマンドのミススペルを訂正
setopt magic_equal_subst  # '='以降も補完

### 補完関連 ###
autoload -U compinit
compinit
setopt auto_list
setopt list_packed
setopt list_types

### History ###
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups    # 直前と同じコマンドはヒストリに追加しない
setopt share_history       # pid の異なる zsh で history を共有
setopt hist_reduce_blanks  # 余分なスペースを除去してヒストリを保存

### Look And Feel ###
autoload -Uz colors
colors

PROMPT="%{$fg_bold[cyan]%}%m$ %{$reset_color%}"
RPROMPT="%{$fg_bold[white]%}[%{$reset_color%}%{$fg[cyan]%}%~%{$reset_color%}\
%{$fg_bold[white]%}]%{$reset_color%}"

### VCS ###
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '(%s)-[%b]'
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'
precmd(){
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

RPROMPT=$RPROMPT"%1(v|%F{green}%1v%f|)"
