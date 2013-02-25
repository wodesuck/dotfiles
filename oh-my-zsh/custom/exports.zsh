export PERL5LIB="$HOME/perl5/lib/perl5:$PERL5LIB"
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'
export NDK_ROOT=$ANDROID_NDK
export ANDROID_SDK_ROOT=$ANDROID_HOME
export GEM_HOME="$HOME/.gem/ruby/1.9.1/gems"
export PATH="$PATH:$HOME/.gem/ruby/1.9.1/bin:$HOME/cxoffice/bin:$HOME/script"
export OTIMPUS_PREFIX="primusrun"

if [[ -n "$DISPLAY" ]]; then
    export LANG='zh_CN.UTF-8'
    export BROWSER='firefox'
    if [[ "$TERM" == 'xterm-256color' ]]; then
        EDITOR='vim'
    else
        EDITOR='gvim'
    fi
else
    export LANG='en_US.UTF-8'
    export EDITOR='vim'
    export BROWSER='w3m'
fi
