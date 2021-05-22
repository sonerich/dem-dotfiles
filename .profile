export ZDOTDIR="$HOME/.config/zsh/"
export EDITOR="nvim"
#if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#	exec startx
#fi
zsh -c 'source $ZDOTDIR/themes/gruvbox.zsh'
zsh
exit
