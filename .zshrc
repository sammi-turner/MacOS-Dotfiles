# FILE PATHS
export PATH=$PATH:/usr/local/opt/kotlin-native/bin
export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/sbin:$PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:$HOME/.cargo/env"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/opt/local/bin
export PATH="$PATH:$HOME/.local/bin"
export PATH=$PATH:$HOME/.composer/vendor/bin
export PATH="$PATH:$HOME/flutter/bin"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export HAXE_STD_PATH="/opt/homebrew/lib/haxe/std"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# DEFAULT EDITOR
export EDITOR='mate'

# OPEN THIS FILE IN TEXTMATE
alias zrc='mate .zshrc'

# LS ALIASES
alias dots='ls -a | sort'
alias lst='ls | sort'
alias la='ls -A'

# LISP ALIASES
alias lisp='rlwrap sbcl'

# NIM
alias nc='nim c -d:release main.nim'
alias ncr='nim c -d:release main.nim && ./main'

# DLANG NEW PROJECT
dnew() {
  mkdir $1;
  cd $1;
  dub init -n;
}

# DLANG RELEASE BUILD
alias drel='dub build --build=release'

# CREATE EXECUTABLE SCRIPT
ces() {
  touch $1 && chmod +x $1;
}

# ALIAS TO RYOR SCRIPT IN HOME FOLDER
alias ry='~/ryor.rb'

# DENO ALIASES
alias dra='deno run -A main.ts'
alias draw='deno run -A --watch main.ts'
alias drt='deno run -A npm:create-vite@latest --template react-ts'

# DENO COMPILE
dca() {
  deno compile -A --output=$1 main.ts;
}

# GO ALIASES
alias gmi='go mod init'
alias gg='go get'
alias gb='go build'

# GO NEW PROJECT
gnp() {
  take $1 && go mod init $1 && touch main.go
}

# KOTLIN ALIASES
alias kc='kotlinc *.kt -include-runtime -d Main.jar'
alias kr='java -jar Main.jar'
alias kcr='kotlinc *.kt -include-runtime -d Main.jar && java -jar Main.jar'

# JAVA ALIASES
alias jc='javac *.java && jar cvfe Main.jar Main *.class'
alias jr='java -jar Main.jar'
alias jcr='javac *.java && jar cvfe Main.jar Main *.class && java -jar Main.jar'

# HASKELL NEW PROJECT
hnp() {
  take $1 && touch main.hs
}

# HASKELL ALIASES
alias hcr='ghc main.hs && ./main'
alias hc='ghc main.hs'
alias hr='./main.hs'

# DUNE NEW PROJECT
dnp() {
  dune init project $1 && cd $1 && dune build
}

# DUNE ALIASES
alias dcr='dune build && dune exec ./bin/main.exe'
alias dc='dune build'
alias dr='dune exec ./bin/main.exe'

# OCAMLBUILD
# This function can be run with either zero parameters, or a list of dependencies
ob() {
  if [ $# -eq 0 ]; then
    ocamlbuild -use-ocamlfind main.native
  else
    local pkgs="$*"
    ocamlbuild -use-ocamlfind -pkgs "$pkgs" main.native
  fi
}

# OCAMLBUILD AND RUN
# This function can be run with either zero parameters, or a list of dependencies
obr() {
  if [ $# -eq 0 ]; then
    ocamlbuild -use-ocamlfind main.native && ./main.native
  else
    local pkgs="$*"
    ocamlbuild -use-ocamlfind -pkgs "$pkgs" main.native && ./main.native
  fi
}

# RUN OCAMLBUILD BINARY
alias rob='./main.native'

# GIT CLONE
alias gcl='git clone'

# REMOVE GIT FOLDER
alias rmg='rm -rf .git'

# GIT ADD-COMMIT-PUSH
# The $1 parameter is the commit message.
acp() {
  git add .;
  git commit -m $1;
  git push;
}

# YT-DLP
alias dwebm='yt-dlp'
alias dmp4='yt-dlp -f mp4'
alias dmp3='yt-dlp -x --audio-format mp3'

# NEOFETCH
alias neo='neofetch'

# STILLS
# This function uses ffmpeg.
# It generates a series of jpg images from an mp4 file.
# Its $1 parameter is the file name.
stills() {
  ffmpeg -i "$1".mp4 thumb%04d.jpg -hide_banner
}

# CLIP
# This function uses ffmpeg.
# It produces an mp4 video from a larger mp4 file.
# It has four parameters.
# $1 is the input file name.
# $2 is the start time in HH:MM:SS format.
# $3 is the clip duration in seconds.
# $4 is the output file name.
clip() {
  ffmpeg -i "$1".mp4 -ss "$2" -t "$3" "$4".mp4
}

# PLAY
# This function uses ffmpeg.
# It plays an mp4 video with the devices default media player.
# It has three parameters.
# $1 is the start time.
# $2 is the end time.
# $3 is the file name.
play() {
  ffplay -ss "$1" -t "$2" "$3".mp4
}

# PRE GIF
# This function uses ffmpeg.
# It is a helper function called by get_gif.
pre_gif() {
  ffmpeg -i "$1".mp4 -ss "$2" -t "$3" -vf "fps=10,scale=640:-1" -an "$4".mp4
}

# MAKE GIF
# This function uses ffmpeg and imagemagick.
# It is a helper function called by get_gif.
make_gif() {
  ffmpeg -i "$1".mp4 -vf "fps=10,scale=640:-1:flags=lanczos" -c:v pam -f image2pipe - | convert -delay 10 - -loop 0 -layers optimize "$1".gif
}

# GET GIF
# This function uses ffmpeg and imagemagick.
# It converts a section of an mp4 video into a gif.
# It has four parameters.
# $1 is the mp4 file name.
# $2 is the start time in HH:MM:SS format.
# $3 is the duration of the gif in seconds.
# $4 is the gif file name.
get_gif() {
  pre_gif "$1" "$2" "$3" "$4";
  make_gif "$4";
  rm "$4".mp4;
}

[ -f "/Users/sammiturner/.ghcup/env" ] && source "/Users/sammiturner/.ghcup/env" # ghcup-env

# opam configuration
[[ ! -r /Users/sammiturner/.opam/opam-init/init.zsh ]] || source /Users/sammiturner/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# ruby configuration
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# bun completions
[ -s "/Users/sammiturner/.bun/_bun" ] && source "/Users/sammiturner/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
