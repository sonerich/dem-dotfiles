# highlighting
typeset -A ZSH_HIGHLIGHT_STYLES
if [ "$TERM" != "linux" ]; then
	ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta,bold'
	ZSH_HIGHLIGHT_STYLES[default]='fg=cyan'
	ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=cyan,underline'
	ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=yellow,underline'
else
	ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta'
	ZSH_HIGHLIGHT_STYLES[default]='fg=cyan'
	ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=green'
	ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red'
fi
