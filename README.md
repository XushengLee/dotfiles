




# vim 

## vim-plug
Following the repo's suggestion, put the plug.vim under the dir autoload.

## coc
`brew install node` 

If the python interpreter is wrong, `:CocConfig`, and put 
```
 "python.pythonPath": "/Users/someguy/opt/anaconda3/bin/python"
```


# tmux
`brew install tmux` 

# local zshrc (some fancy tools)
## macOS
```
brew install z
# add the line below to zshrc_local_after 
. /usr/local/etc/profile.d/z.sh

brew install tldr  # great replacement for man

brew install bat  # great replacement for cat

brew install ranger

brew install trash

brew install exa  # replacement for ls

# something wrong with fasd on my mac 
brew install fasd # more advanced than z but slower

brew install htop  # this tool needs some time to learning

# faster, git sesentive
brew install fd  # fast than find

# to replace grep
brew install ripgrep  # rg

brew install fzf

# modern ssh
brew install mosh

# not installed yet
brew install atool  # for the aunpack




```
