set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate ''
set __fish_git_prompt_showupstream 'none'
set -g fish_color_cwd yellow # Default green
set -g fish_prompt_pwd_dir_length 3

function get_prompt_cwd
    if [ $PWD != $HOME ]
        echo (set_color brblack):(set_color $fish_color_cwd)(basename $PWD)
    end
end

function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s[%s] %s%s%s%s%s %s|%s ' (set_color brblack) (date +%H:%M) (set_color brwhite) $hostname (get_prompt_cwd) (set_color normal) (fish_git_prompt) (set_color red) (set_color normal)
end
