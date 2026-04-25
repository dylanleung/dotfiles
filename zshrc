export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"

zstyle ':zim:zmodule' use 'degit'

ZIM_CONFIG_FILE=~/.config/zsh/zimrc

ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim
# Install missing modules and update ${ZIM_HOME}/init.zsh if missing or outdated.
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZIM_CONFIG_FILE:-${ZDOTDIR:-${HOME}}/.zimrc} ]]; then
  source /opt/homebrew/opt/zimfw/share/zimfw.zsh init
fi
# Initialize modules.
source ${ZIM_HOME}/init.zsh

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

export LC_ALL="zh_CN.UTF-8"

#alias
alias ls='eza -lh --group-directories-first --icons --hyperlink'
alias lsa='ls -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'

alias i="brew install"
alias ic="brew  install --cask"

alias typora="open -a typora"

alias lg="lazygit"

alias cm="chezmoi"

#fd
alias fda='fd -IH'
alias rga='rg -uuu'


alias tscp="termscp"

# 重载配置文件
alias rr="exec zsh"

eval "$(mcfly init zsh)"


source /Users/dylan/.config/broot/launcher/bash/br
