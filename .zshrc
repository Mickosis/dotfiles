source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(starship init zsh)"

alias ls=colorls

export PATH="$HOME/.tmux/plugins/tmuxifier/bin:$PATH"
export EDITOR=nvim
eval "$(tmuxifier init -)"
