export ZDOTDIR="$HOME/.config/zsh/"
export EDITOR="nvim"
rfkill unblock all
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx
fi
