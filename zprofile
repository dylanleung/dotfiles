
# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

export ANTHROPIC_AUTH_TOKEN=$(security find-generic-password -s "anthropic_auth_token" -w)

# Anthropic Auth Token
export GITHUB_TOKEN=$(security find-generic-password -s "GITHUB_TOKEN" -w)