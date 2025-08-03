if status is-interactive
    # Commands to run in interactive sessions can go here
end

zoxide init fish | source
fzf --fish | source

#Tool aliases
alias ls eza

# Git Aliases
alias gcm "git commit -m"
alias gca "git commit --amend"
alias gcam "git commit --amend -m"

#Other aliases
alias cfgsrc "source $HOME/.config/fish/config.fish"
alias cfgedt "nvim $HOME/.config/fish/config.fish"
