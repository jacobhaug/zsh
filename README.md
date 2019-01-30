# zsh config

- OS : macOS Mojave
- Terminal : iTerm2 (Build 3.2.7)
- Font : Meslo LG L DZ Regular Nerd Font Complete (Size: 14pt)
- Color scheme : Solarized Dark

Working terminal:

![](https://github.com/jacobhaug/zsh/blob/master/images/terminal.png?raw=true)

## Prerequisite:

Homebrew should be installed. If not then [install](https://brew.sh/) the lates version of homwbrew.

## A step by step guide to customize your zsh terminal:

### 1. [Install iTerm2](https://www.iterm2.com/)

iTerm2 is way better than the default OSX terminal.

### 2. Install ZSH

- Mac: `brew install zsh`
- Linux: `apt-get install zsh`

### 3. [Install oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) plugin

Run the following command in the terminal to install it:
```sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"```

### 4. [Install powerlevel9k](https://github.com/bhilburn/powerlevel9k) theme for oh-my-zsh

Run the following command in the terminal to install it:
```git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k```

### 5. [Install Nerd Font](https://github.com/ryanoasis/nerd-fonts)

- Download [`Meslo LG L DZ Regular Nerd Font Complete.otf`](https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Meslo/L-DZ/complete/Meslo%20LG%20L%20DZ%20Regular%20Nerd%20Font%20Complete.otf) and install it.
- Then go to _iTerm2 > Preferences > Profiles > Text_ and open _Change Font_
- and select _Meslo LG L DZ Regular Nerd Font Complete_ font at 14pt.

![](https://github.com/jacobhaug/zsh/blob/master/images/iterm2/06-font-preferences.png?raw=true)

### 6. Select preinstalled color theme Solorized Dark
![](https://github.com/jacobhaug/zsh/blob/master/images/iterm2/04-color-profiles.png?raw=true)
![](https://github.com/jacobhaug/zsh/blob/master/images/iterm2/05-color-selection-profile.png?raw=true)

### 7. Install two more plugins for zsh

- `zsh` Syntax Highlighting Plugin:  
   `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting`

- `zsh` AutoSuggestion Plugin:  
   `git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions`
   
### 7. Config ZSH Path

Edit `~/.oh-my-zsh/custom/path.zsh` and customize your path as required.

### 8. Replace `.zshrc` file

Replace your `~/.zshrc` file with the one in this repo.
