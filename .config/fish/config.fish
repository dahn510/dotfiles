xset r rate 250 40
if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Abbreviations
abbr -a -- b 'cd .. && ls'
abbr -a -- bb 'cd - && ls'
abbr -a -- ls 'exa --oneline --icons --color=always'
abbr -a -- ll 'exa --oneline --icons --color=always -l --git'
abbr -a -- la 'exa --oneline --icons --color=always -a'
abbr -a -- lla 'ls -la'

abbr -a -- gaa 'git add --a && git status'
abbr -a -- gcm 'git commit -m'
abbr -a -- gs 'git status'
abbr -a -- gh 'git hist' # Requires setting a git aliase for showing git log with desired format

abbr -a -- logout 'loginctl kill-user $USER'
abbr -a -- ssh 'kitty +kitten ssh'
abbr -a -- vim nvim
