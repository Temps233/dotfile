alias v=hx
alias vim=hx
alias c=clear
alias ff=fastfetch
alias cs="c && ff && cowsay \"I use Windows btw\""
alias l="ls --color=auto"
alias la="ls -larth"
alias clock="tock -cms"

function lprof
    v ~/.config/fish/config.fish
    . ~/.config/fish/config.fish
end

set -gx HOMEBREW_BREW_GIT_REMOTE "https://mirrors.ustc.edu.cn/brew.git"
set -gx HOMEBREW_CORE_GIT_REMOTE "https://mirrors.ustc.edu.cn/homebrew-core.git"
set -gx HOMEBREW_CASK_GIT_REMOTE "https://mirrors.ustc.edu.cn/homebrew-cask.git"
set -gx HOMEBREW_BOTTLE_DOMAIN "https://mirrors.ustc.edu.cn/homebrew-bottles"
set -gx HOMEBREW_API_DOMAIN "https://mirrors.ustc.edu.cn/homebrew-bottles/api"
set -gx HOMEBREW_NO_ENV_HINTS 1

# bun
set -gx BUN_INSTALL "$HOME/.bun"
fish_add_path "$BUN_INSTALL/bin"

fish_add_path $HOME/.cargo/bin
fish_add_path /usr/local/go/bin
fish_add_path /home/revtemps/.local/share/pnpm

/home/linuxbrew/.linuxbrew/bin/brew shellenv | .

set -g fish_greeting ""
ff
