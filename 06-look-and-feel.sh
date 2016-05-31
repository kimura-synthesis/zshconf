#!/usr/bin/zsh
# -*- coding: utf-8 -*-

autoload -Uz colors
colors

PROMPT="%{$fg_bold[cyan]%}%m$ %{$reset_color%}"
RPROMPT="%{$fg_bold[white]%}[%{$reset_color%}%{$fg[cyan]%}%~%{$reset_color%}\
%{$fg_bold[white]%}]%{$reset_color%}"
