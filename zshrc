# --- 核心！解决 brew update 和安装时卡在 API 的问题 ---
export HOMEBREW_API_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles/api"
# --- 核心！加速二进制包下载 ---
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"

# 关闭自动更新
export HOMEBREW_NO_AUTO_UPDATE=1

zstyle ':zim:zmodule' use 'degit'

ZIM_CONFIG_FILE=~/.config/zsh/zimrc

ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim
# Install missing modules and update ${ZIM_HOME}/init.zsh if missing or outdated.
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZIM_CONFIG_FILE:-${ZDOTDIR:-${HOME}}/.zimrc} ]]; then
  source /opt/homebrew/opt/zimfw/share/zimfw.zsh init
fi
# Initialize modules.
source ${ZIM_HOME}/init.zsh

# 1. 只有当 TERM_PROGRAM 为 "ghostty" 且不在 tmux/ZMX 中时才执行
# if [ -n "$GHOSTTY_RESOURCES_DIR" ] && [ -z "$ZMX_SESSION" ]; then
#     # 2. 尝试连接到 "main" 会话，如果不存在则创建它
#     zmx attach main 2>/dev/null || zmx attach main
# fi

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


#fd
alias fda='fd -IH'
alias rga='rg -uuu'


alias tscp="termscp"

# 重载配置文件
alias rr="exec zsh"

eval "$(mcfly init zsh)"


eval "$(zoxide init zsh)"


eval "$(fzf --zsh)"
