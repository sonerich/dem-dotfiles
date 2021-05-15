### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

### Compinit
#zstyle :compinstall filename '$HOME/.config/zsh/.zshrc'
autoload -Uz compinit
zstyle ':completion:*' menu select
autoload compinit && compinit

### General settings
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=4096
SAVEHIST=4096
setopt autocd extendedglob nomatch

zinit ice wait lucid atload'_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions
zinit wait lucid for \
            hlissner/zsh-autopair \
	    zsh-users/zsh-syntax-highlighting \

zinit light zsh-users/zsh-history-substring-search

# Auto suggestions
ZSH_AUTOSUGGEST_STRATEGY=(
	history
	completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=(100)
ZSH_AUTOSUGGEST_USE_ASYNC=(true)

# highlighting
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[default]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=cyan,underline'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=yellow,underline'

# history searching
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# vim mode
bindkey -v

# alias
alias v='nvim'
alias s='sudo '
alias ga='git add '
alias gp='git push'
alias gc='git commit -m'
alias conf='cd ~/.config && nvim "$(sk)"'
alias inst='paru -S --needed '
alias del='paru -R '
