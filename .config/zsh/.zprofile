export ZDOTDIR="$HOME/.config/zsh/"
export EDITOR="nvim"
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx
fi
rfkill unblock all
alacritty -e nvim
