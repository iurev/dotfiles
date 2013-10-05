HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle :compinstall filename '/home/wwju/.zshrc'
zstyle ':completion:*:cd:*' ignore-parents parent pwd
zstyle -e ':completion:*:approximate:*' max-errors 'reply=( $((($#PREFIX+$#SUFFIX)/3 )) numeric )'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:functions' ignored-patterns '*'
zstyle ':completion:*' menu select=long-list select=0
zstyle ':completion:*' old-menu false
zstyle ':completion:*' original true

autoload -U compinit promptinit
compinit
promptinit;
# End of lines added by compinstall

# А вот тут идут уже мои конфиги
# исправлять неверно набранные комманды 
setopt CORRECT_ALL
# Дополнение файла из истории
setopt appendhistory
# Удаление дублирующих комманд
setopt HIST_IGNORE_ALL_DUPS
# Пустых строк, возникающих после ошибочного нажатия Enter в “голом” приглашении:
setopt HIST_REDUCE_BLANKS
# Лишних пробелов в командной строке:
setopt HIST_IGNORE_SPACE
# Комманды добавляются в историю при вводе, а не при
# завершении сессии
setopt INC_APPEND_HISTORY
# При просмотре истории, просматривается не вся история,
# а только та, которая начинается с введенных букв
#bindkey "^[[A" up-line-or-search
#bindkey "^[[B" down-line-or-search
# По указаннным путям шелл автоматически ищет
# Не обращает внимание на регистр
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# Автокоррекция всего и вся
setopt correctall
# переименование-перемещение c пogтвepжgeнueм
alias mv='nocorrect mv -i'
# рекурсивное копирование с подтверждением
alias cp='nocorrect cp -iR'
# удаление с подтверждением
alias rm='nocorrect rm -i'
# принудительное удаление
alias rmf='nocorrect rm -f'
# принудительное рекурсивное удаление
alias rmrf='nocorrect rm -fR'
# создание каталогов без коррекции
alias mkdir='nocorrect mkdir'
# Выводит цветным
alias ls='ls --color=auto'
alias grep='grep --colour=auto'

#bindkey "^[[A" history-beginning-search-backward
#bindkey "^[[B" history-beginning-search-forward

zstyle ':completion:*' menu yes select

# загружаем список цветов 
autoload colors && colors

# Установка PROMT 
 # 
 # левый 
PROMPT="%{$fg_bold[blue]%}>>%{$reset_color%}"

 # правый 
  #%(?,%{\e[0;32m%}:%)%{\e[0m%},%{\e[0;31m%}:(%{\e[0m%} 
 # когда всё гуд хороший смайлик, когда ошибка то грусный, ну и цветные ясен фиг 
RPROMPT="%{$fg_bold[blue]%}%~/ %{$reset_color%}% %(?,%{$fg[green]%}:%)%{$reset_color%},%{$fg[red]%}:(%{$reset_color%}"

 # вопрос на автокоррекцию 
SPROMPT='zsh: Заменить '\''%R'\'' на '\''%r'\'' ? [Yes/No/Abort/Edit] '

 # симпотное добавления для kill 
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)"

alias inst='sudo aptitude install '

# показываев дерево директорий 
alias tree='find . -type d | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"'

alias docs='Документы'

alias up='cd ..'

# Set xterm title
#case $TERM in (xterm*|rxvt)
#    precmd () { print -Pn "\e]0;%n@%m: %~\a" }
#    preexec () { print -Pn "\e]0;%n@%m: $1\a" }
#    ;;
#esac


alias temp='acpi -t'

alias lsa='ls -A'

alias lsg='ls -gh'

alias docs='cd ~/Документы/'

#vi insert mode like keybindings
#defining something more usable than the defaults vi bindings
#creating two keymaps
#bindkey -N myviins viins
#bindkey -N myvicmd vicmd
#defining widgets, to switch between them
#function my_viins_to_vicmd(){print -n "\033]0;zsh\a";bindkey -A myvicmd main}
#function my_vicmd_to_viinsi(){print -n "\033]0;zsh INSERT\a";bindkey -A myviins main}
#function my_vicmd_to_viinsa(){print -n "\033]0;zsh INSERT\a";zle vi-forward-char;bindkey -A myviins main}
#zle -N my_viins_to_vicmd
#zle -N my_vicmd_to_viinsi
#zle -N my_vicmd_to_viinsa
#bindkey -M myviins '^[' my_viins_to_vicmd
#bindkey -M myvicmd 'i'	my_vicmd_to_viinsi
#bindkey -M myvicmd 'a'	my_vicmd_to_viinsa


#source ~/.zsh/zsh-syntax-highlighting.zsh
#ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root)
#ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')

#ZSH_HIGHLIGHT_STYLES[cursor]='bg=green'

#ZSH_HIGHLIGHT_STYLES[root]='bg=red'

alias trans='sdcv '

alias apt='sudo apt-get '

#export PATH=$PATH:/usr/local/go/bin

#alias cloj='java -cp ~/.clojure/clojure-1.5.1.jar clojure.main'

[[ -s "/home/wwju/.rvm/scripts/rvm" ]] && source "/home/wwju/.rvm/scripts/rvm"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && "$HOME/.rvm/scripts/rvm"
PATH=$PATH:/usr/bin
alias st='sudo systemctl start '
source ~/.rvm/scripts/rvm
ZSH_THEME="powerline"
export TERM="xterm-256color"
POWERLINE_RIGHT_B="date replacement"
