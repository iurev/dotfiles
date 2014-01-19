
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

set -x DATABASE_URL 'postgres://wwju:123123@localhost:5432/pktu_dev'
rvm use 2.1.0 --default
