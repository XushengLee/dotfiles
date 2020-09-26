# plugins
three plugins are [hightlight](https://github.com/zsh-users/zsh-syntax-highlighting), 
[zsh-completions](https://github.com/zsh-users/zsh-completions), 
[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)


# for mac users
the [original repo](https://github.com/anishathalye/dotfiles/) would have some difficulties on OSX, 
since it uses command `dircolors` which is a GNU command not available on OSX and relies on 
[dircolors-solarized](https://github.com/seebi/dircolors-solarized/tree/5fb86a3f947f0e8b3005871c2f97df80e80f3016) 
to make the color right. (also needs a script `spectrum.zsh` to further processing)

However, on OSX, one almost certainly will install iTerm2, which has color preset functionality. 
and in this way, the color are already the way we want it 
(and the color changes with different color scheme you choose, which makes it even better)

# settings.zsh
the file has some remappings and make vim-like ops for the zsh. default mode is insert, esc to normal

and if you don't like the vim-like command line, please comment out in the `setting.zsh`

## TODO 
the vim bindings need a thorough checking (learning)
