if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"
    source /usr/share/powerline/bindings/fish/powerline-setup.fish
    powerline-setup

    # Scripts of things I've installed manually and don't want to pollute the system files with
    export PATH="$PATH:/home/tyler/workspace/programs"
    
    alias restartPlasma='kquitapp5 plasmashell && kstart5 plasmashell > /dev/null 2>&1'
    alias gits='git status'
    alias gitf='git fetch'
    alias glog='git log --oneline --decorate'
    alias gloga='git log --oneline --decorate --all'
end
