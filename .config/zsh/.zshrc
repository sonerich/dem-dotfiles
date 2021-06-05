# source files in autoload/
for f in ~/.config/zsh/autoload/*; do
	source $f
done

### General settings
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=8192
SAVEHIST=8192
setopt autocd extendedglob nomatch correct

# history searching
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# vim mode
bindkey -v
bindkey '^Z' undo # undo with ctrl+z
