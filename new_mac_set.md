## apps
```
brew install --cask 1password
brew install --cask alacritty
brew install --cask asana
brew install --cask claude-code
brew install --cask discord
brew install --cask dropbox
brew install --cask firefox
brew install --cask gitkraken
brew install --cask google-chrome@dev
brew install --cask google-drive
brew install --cask inkscape
brew install --cask jordanbaird-ice
brew install --cask kopiaui
brew install --cask obsidian
brew install --cask signal
brew install --cask sourcetree
brew install --cask steam
brew install --cask tuple
brew install --cask vlc
brew install --cask zulip
```

## as needed
```
brew install --cask affinity
brew install --cask diffusionbee
brew install --cask grandperspective
brew install --cask imageoptim
brew install --cask windows-app
```

## todo

LibreOffice
Steam
Tailscale
Android File Transfer
Audacity
Bazecor
CameraController (for canon cam control)
Cyberduck
DBeaver
Display Menu
Diffusion Bee
Draw Things
FileZilla
GIMP
GrandPerspective
Image2Icon
MacDown
MiniZincIDE
MusicBrainz Picard
OBS
OpenSCAD
Pearcleaner
Postgres
ScanSnap Home
Slack
Taxtron
Tempus Stopwatch
qView
reMarkable
VNC Viewer
VOX
VSCodium
WireGuard


## manually
unstuck
zoom (see below)


## other
```
brew install 1password-cli
brew install awscli
brew install fzf
brew install difftastic   # for better git diffs
brew install rsync
brew install tree
brew install sox          # for deploy script audio
```

## nvim
```
brew install uv
brew install python3
uv tool install --upgrade pynvim
brew install rg
brew install tree-sitter-cli
brew install nvim
brew install clojure-lsp
```

```
:PlugInstall
```

# clojure stuff
```
brew install jenv
brew install borkdude/brew/babashka
brew install leiningen
brew install tmux
```

# rust
```
brew install rustup
```

# libkrun
```
brew install libkrun
brew install libkrunfw
brew install lld
brew install podman
```

# zprezto
```
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```

# 1password agent
```
mkdir -p ~/.1password && ln -s ~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock ~/.1password/agent.sock
```

# zoom
```
https://zoom.us/download?os=mac
xar -xf zoomusInstallerFull.pkg
cpio -i --file zoomus.pkg/Payload
sudo mv zoom.us.app /Applications
```

# llm / blabla
```
mkdir ~/.config/blabla
copy config file
```
