if status is-interactive
    atuin init fish | source
end

# Some nice alias
alias vim nvim
alias cat bat
alias top btm
alias htop btm
alias mamba micromamba
alias task go-task
alias cp xcp
alias ls eza

alias csgo "sh ~/.local/bin/csgo"

# Bat configuration
set -gx BAT_THEME catppuccin-mocha 

# pnpm
set -gx PNPM_HOME "/home/koritar/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

# tmux
set -gx PATH "~/.local/bin" $PATH

# Alias for nix
alias nix-shell "nix-shell --run fish"

zoxide init fish | source
micromamba shell hook --shell=fish | source
fish_add_path /home/koritar/.pixi/bin
pixi completion --shell fish | source
