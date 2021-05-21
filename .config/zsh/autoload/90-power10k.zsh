# different prompts for tty and terminal
if [ "$TERM" = "linux" ]; then
	[[ ! -f ~/.config/zsh/.p10k_tty.zsh ]] || source ~/.config/zsh/.p10k_tty.zsh
else
	[[ ! -f ~/.config/zsh/.p10k_terminal.zsh ]] || source ~/.config/zsh/.p10k_terminal.zsh
fi
