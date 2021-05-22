# different prompts for tty and terminal
if [ "$TERM" = "linux" ]; then
	echo -en "\e]P0232323"
	[[ ! -f ~/.config/zsh/.p10k_tty.zsh ]] || source ~/.config/zsh/.p10k_tty.zsh
else
	[[ ! -f ~/.config/zsh/.p10k_terminal.zsh ]] || source ~/.config/zsh/.p10k_terminal.zsh
fi
