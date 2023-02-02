if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Some nice alias
alias vim nvim
alias cat bat

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
