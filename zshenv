export PERL5LIB="$HOME/perl5/lib/perl5:$PERL5LIB"
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'
export NDK_ROOT=$ANDROID_NDK
export SDK_ROOT=$ANDROID_HOME
export ANDROID_SDK_ROOT=$ANDROID_HOME
export GEM_HOME="$HOME/.gem/ruby/1.9.1/gems"

typeset -U path
path=($path ~/script $GEM_HOME)

if [[ -n "$DISPLAY" ]]; then
    export LANG='zh_CN.UTF-8'
    export EDITOR='gvim'
    export BROWSER='firefox'
    [[ -n "$TMUX" ]] && export TERM=screen-256color
    [[ "$TERM" = "xterm-256color" ]] && export EDITOR='vim'
    [[ "$TERM" = "rxvt-unicode-256color" ]] && export EDITOR='vim'
else
    export LANG='en_US.UTF-8'
    export EDITOR='vim'
    export BROWSER='w3m'
fi
