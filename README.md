<br>

# MacOS-Dotfiles

Very basic configs for zsh, vim and ranger.

<br>

## To install "Oh My Zsh"

Enter this command

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Note that this will replace your existing .zshrc, so install it before adding the zsh config in this repo!

<br>

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

<br>

## Checklist for a new machine

Install the following packages with homebrew

```
macvim
git
ffmpeg
yt-dlp
node
pnpm
```
