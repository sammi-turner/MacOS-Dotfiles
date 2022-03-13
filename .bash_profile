export BASH_SILENCE_DEPRECATION_WARNING=1

# Prompt
PS1=' \W > '

# Edit file in Text Mate
alias edit='open -a TextMate'

# Clear screen
alias cls='clear'

# Clone a repo
alias gcl='git clone'

# Download with yt-dlp
alias dwebm='yt-dlp'
alias dmp4='yt-dlp -f mp4'
alias dmp3='yt-dlp -x --audio-format mp3'

# Neofetch
alias neo='neofetch'

# GNU Make
alias foo='make && ./bin/main'

# Python
alias run='python3 app.py'
alias env='virtualenv .'
alias req='pip install -r requirements.txt'
alias ugp='python3 -m pip install --upgrade pip'
alias act='source bin/activate'
alias dea='deactivate'

# Crystal
alias cr='crystal run'
alias cb='crystal build --no-debug'
alias cbr='crystal build --no-debug --release'
