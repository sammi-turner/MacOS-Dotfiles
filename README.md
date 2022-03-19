# MacOS-Dotfiles

Very simple zsh, bash, vim, iterm2, and legacy mac terminal set ups.

## Installing Oh My ZSH! for use on iterm2

Installing [Oh My ZSH!](https://ohmyz.sh/) will wipe your existing .zshrc file and replace it with a default one. 

So install Oh My ZSH! first, then replace the default config with the one in this repo.

The zsh theme is set to "agnoster", but the agnoster config file here is slighly different than the default one.

Replace the default config with the new one at

```
.oh-my-zsh/themes/agnoster.zsh-theme
```

## Change the default shell to Zsh

Enter

```
$ chsh -s /bin/zsh
```

Then enter your password.

## Change the default shell to Bash

Enter

```
$ chsh -s /bin/bash
```

Then enter your password.

## Legacy Mac Terminal

This repo includes a folder of [terminal profiles](https://support.apple.com/en-gb/guide/terminal/trml107/mac) for use with the legacy mac terminal. 
