# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh//.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
zinit ice depth=1;
zinit light romkatv/powerlevel10k

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

#starship prompt
# eval "$(starship init zsh)"

# alias
alias v='nvim'
alias s='sudo '
alias ga='git add '
alias gp='git push'
alias gc='git commit -m'
alias conf='cd ~/.config && nvim "$(sk)"'
alias inst='paru -S --needed '
alias del='paru -R '

# To customize prompt, run `p10k configure` or edit ~/.config/zsh//.p10k.zsh.
[[ ! -f ~/.config/zsh//.p10k.zsh ]] || source ~/.config/zsh//.p10k.zsh
