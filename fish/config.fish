if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x EDITOR nvim
    set -x BROWSER brave

    fzf --fish | source

    # Scripts of things I've installed manually and don't want to pollute the system files with
    set -x GPG_TTY $(tty)
    fish_add_path "$HOME/go/bin"
    fish_add_path "$HOME/workspace/programs"
    fish_add_path "$HOME/.cargo/bin"
    fish_add_path "$HOME/.local/bin"
    #set -x PATH "$HOME/.pyenv/bin:$PATH"

    #pyenv init - | source

    alias gits='git status'
    alias gitf='git fetch'
    alias gitfa='git fetch --all --tags --force'
    alias glog='git log --oneline --decorate'
    alias gloga='git log --oneline --decorate --all'
    alias ls='ls -a --color=auto'
    alias lsal='ls -al --color=auto'
end
