function vpn-connect() {
/usr/bin/env osascript <<EOF
tell application "System Events"
        tell current location of network preferences
                set VPN to service "Caplin"
                if exists VPN then connect VPN
        end tell
end tell
EOF
}

function vpn-disconnect() {
/usr/bin/env osascript <<EOF
tell application "System Events"
        tell current location of network preferences
                set VPN to service "Caplin"
                if exists VPN then disconnect VPN
        end tell
end tell
EOF
}

JIRA_URL=http://jira.caplin.com

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
 alias zshconfig="mate ~/.zshrc"
 alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-syntax-highlighting mvn jira knife osx)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

PROMPT='$fg[cyan]%m: $fg[yellow]%~
%{$reset_color%}>> '

P4INFO=`p4 info`

echo "$fg[green]"
echo `zsh --version`
echo ""
echo "Perforce Info"
echo ''
echo $P4INFO | grep 'Client name'
echo $P4INFO | grep 'Client root'
echo $P4INFO | grep 'Client address'
echo $P4INFO | grep 'Server address'

echo $reset_color
