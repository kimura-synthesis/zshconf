#!/usr/bin/zsh
# -*- coding: utf-8 -*-

HISTFILE=${HOME}/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt hist_ignore_dups   ### 直前と同じコマンドは履歴に保存しない
setopt hist_reduce_blanks ### 余分なスペースを除去して履歴に保存
setopt share_history      ### pid の異なる zsh で履歴を共有
