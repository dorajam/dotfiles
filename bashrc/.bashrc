PATH=$HOME:$PATH

if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

export EDITOR=vim

export MPLBACKEND=agg

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
