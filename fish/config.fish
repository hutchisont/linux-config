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
    fish_add_path "$HOME/.local/bin"
    #set -x PATH "$HOME/.pyenv/bin:$PATH"

    set -x EDITOR nvim

    #pyenv init - | source

    alias xrandrLeftMonitor='xrandr --output HDMI-0 --auto --left-of DP-0'
    alias xrandrRightMonitor='xrandr --output DP-0 --auto --right-of HDMI-0'
    alias vim='nvim'
    alias gits='git status'
    alias gitf='git fetch'
    alias gitfa='git fetch --all --tags --force'
    alias glog='git log --oneline --decorate'
    alias gloga='git log --oneline --decorate --all'
    alias ls='ls -al --color=auto'
end

