if status is-interactive
    # Commands to run in interactive sessions can go here
    fzf --fish | source

    set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"
    source /usr/share/powerline/bindings/fish/powerline-setup.fish
    powerline-setup

    # Scripts of things I've installed manually and don't want to pollute the system files with
    set -x GPG_TTY $(tty)
    fish_add_path "$HOME/go/bin"
    fish_add_path "$HOME/workspace/programs"
    fish_add_path "$HOME/.cargo/bin"
    fish_add_path "$HOME/.local/bin"
    #set -x PATH "$HOME/.pyenv/bin:$PATH"

    set -x EDITOR nvim

    #pyenv init - | source

    alias vim='nvim'
    alias gits='git status'
    alias gitf='git fetch'
    alias gitfa='git fetch --all --tags --force'
    alias glog='git log --oneline --decorate'
    alias gloga='git log --oneline --decorate --all'
    alias ls='ls -a --color=auto'
    alias lsal='ls -al --color=auto'
    function cdir
        set last_arg (history | head -n 1 | string split ' ' | tail -n +2 | string join ' ')
        set dir (dirname $last_arg)
        set expanded_dir (string replace --regex '^~' $HOME $dir)
        cd $expanded_dir
    end
end
