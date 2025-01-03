# set PowerShell to UTF-8

$env:PYTHONIOENCODING='utf-8'
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# STARSHIP_CONFIG

Invoke-Expression (&starship init powershell)
$ENV:STARSHIP_CONFIG = "C:\Users\Admin\.config\Starship\starship.toml"

# Oh-My-Posh

#oh-my-posh init pwsh | Invoke-Expression
#oh-my-posh init pwsh --config 'C:\Program Files (x86)\oh-my-posh\themes\1_shell.omp.json' | Invoke-Expression

####### Alias ##########

# MPV Alias

Set-Alias m mpv

Set-Alias um umpvw

# Git Shortcuts
Set-Alias np notepad++

function gi { 
git init 
}

Set-Alias g git

Set-Alias ex explorer

function gs { git status }

function ga { git add . }

function gc { param($m) git commit -m "$m" }

function gp { git push }

function gcl { git clone "$args" }

function lazyg {
    git add .
    git commit -m "this is auto add-commit-push"
    git push
}
Set-Alias ll ls
Set-Alias ff fastfetch

################ Plugins


# Terminal Icons
Import-Module Terminal-Icons


# Directory Jumper "z"
Import-Module z


# History Reader
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyhandler -Chord 'Ctrl+d' -Function DeleteChar


# Fuzzy finder Fzf
Import-Module PsFzf
Set-PsFzfOption -PsReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'


# Check for Profile Updates

function rpf { . $PROFILE }