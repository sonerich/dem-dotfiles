# source files in autoload/
for f in ~/.config/zsh/autoload/*; do
	source $f
done

### General settings
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=4096
SAVEHIST=4096
setopt autocd extendedglob nomatch correct

# history searching
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# vim mode
bindkey -v
bindkey '^Z' undo # undo with ctrl+z
