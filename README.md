# MacOS-Dotfiles

Simple configs for various apps.

## To install Homebrew

After installing Xcode from the Apple app store, enter this command

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then add brew to the PATH variable by making sure these lines are at the top of your .zshrc config

```
export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/sbin:$PATH
```

## To install "Oh My Zsh"

Enter this command

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
