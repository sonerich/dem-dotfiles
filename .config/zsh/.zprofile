ZDOTDIR=$HOME/.config/zsh/
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx
fi
rfkill unblock all
