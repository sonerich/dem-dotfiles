export ZDOTDIR="$HOME/.config/zsh/"
export EDITOR="nvim"
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	sleep 1.5
	exec startx
fi
zsh -c 'source $ZDOTDIR/themes/gruvbox.zsh'
zsh
exit
