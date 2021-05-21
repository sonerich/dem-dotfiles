# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
if [ "$TERM" = "linux" ]; then
	[[ ! -f ~/.config/zsh/.p10k_tty.zsh ]] || source ~/.config/zsh/.p10k_tty.zsh
else
	[[ ! -f ~/.config/zsh/.p10k_terminal.zsh ]] || source ~/.config/zsh/.p10k_terminal.zsh
fi
