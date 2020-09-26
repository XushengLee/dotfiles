# alias
the [origin repo](https://github.com/anishathalye/dotfiles/) have some alias are not working with OSX, 
because flgs like `ls --color` and `grep --color` belong to GUN comands, and the ones on OSX (FreeBSD) are 
kind of out of date, so the solution is to first `brew install coreutils`, which install GUN commands with 
`g` prefix, then modified code like `alias ls='ls --color=auto'` to `alias ls='gls --color=auto'` 

# TODO
the rest of the alias code are not tested by me.
