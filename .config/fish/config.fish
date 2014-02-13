
alias st='sudo systemctl start '
alias apt='sudo apt-get '
alias trans='sdcv --data-dir ~/.stardict/dicts'
alias temp='acpi -t'
alias gitundo='git reset --hard; git reset -fd'

alias lsa='ls -A'

alias lsg='ls -gh'

alias docs='cd ~/Документы/'
alias inst='sudo aptitude install '

# показываев дерево директорий
alias tree='find . -type d | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"'

alias docs='Документы'

alias up='cd ..'

set fish_path $HOME/.oh-my-fish
. $fish_path/oh-my-fish.fish
set fish_plugins rails git rvm bundler

set -x PATH $HOME/.rbenv/bin $PATH
set -x PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1
