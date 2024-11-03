# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

##### CUSTOM COMMANDS #####
alias la='ls -A'
alias neob='cd ~/.config/nvim'
alias ..='cd ..'
alias b='cd ~/'
alias c='clear'

alias class='cd ~/class'
alias 325='cd ~/class/325'
alias 323='cd ~/class/343'
alias 229='cd ~/class/229'

alias fonts='cd ~/.local/share/fonts/'
alias matrix='cmatrix -C white'
alias sleep='systemctl suspend'

alias t='tmux'
alias ta='tmux attach -t'
alias tl='tmux ls'
alias tka='tmux kill-server'
alias tk='tmux kill-session -t'
alias td='tmuxinator todo'

alias o='./output'

alias keyboardoff='xinput float "AT Translated Set 2 keyboard"'
alias keyboardon='xinput reattach "AT Translated Set 2 keyboard" "Virtual core keyboard"'

alias backup='sudo timeshift-gtk'
alias wifi='nmtui'
alias wifir='nmcli device wifi rescan'
alias display='lxappearance'
alias fzfs='~/scripts/fzf.sh'

###############

# oh my posh
eval "$(oh-my-posh init bash --config ~/.customposhthemes/custom_posh.omp.json)"

# Set nvim as the default editor
export VISUAL=nvim
export EDITOR="$VISUAL"

# Enable Vim mode in Bash
set -o vi

# Set a short timeout for key sequences
INPUTRC=~/.inputrc
echo "set keyseq-timeout 50" >> $INPUTRC

# Custom key bindings in Vim mode
bind -m vi-command '"\C-p": history-search-backward'
bind -m vi-command '"\C-n": history-search-forward'
bind -m vi-command '"\ew": kill-region'
bind -m vi-insert '"\C-p": history-search-backward'
bind -m vi-insert '"\C-n": history-search-forward'
bind -m vi-insert '"\ew": kill-region'

# fzf
bind '"\C-f":"fzfs\n"'

export PATH="$HOME/.bin:$PATH"
source ~/.bin/tmuxinator.bash
source ~/.tmuxinator.bash
