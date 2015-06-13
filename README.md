# ZSH Install

## Install ZSH
* Mac: `brew install zsh`
* Linux: `apt-get install zsh`

## Get Oh-my-zsh Package
`git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh`

## Install Powerline

```
git clone https://github.com/milkbikis/powerline-shell ~/.powerline-shell
~/.powerline-shell/install.py
ln -s ~/.powerline-shell/powerline-shell.py ~/powerline-shell.py
```

## Install Powerline Fonts
```
git clone https://github.com/powerline/fonts.git
sh ~/fonts/install.sh
rm -rf ~/fonts
```

## ZSH Config
```
mv .zshrc ~/.zshrc
mv config.zsh ~/.oh-my-zsh/custom/config.zsh
mv ducknorris.zsh-theme ~/.oh-my-zsh/custom/ducknorris.zsh-theme
```

## Change Terminal Fonts
Inconsolata for Powerline @ 14 pt

## Optionally install thefuck
* Mac: `brew install thefuck`

## Optionally install iTerm Theme
* https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized

# Change Default Shell to ZSH
`chsh -s /bin/zsh`
