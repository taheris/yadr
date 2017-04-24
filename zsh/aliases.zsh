# Aliases in this file are bash and zsh compatible

# Don't change. The following determines where YADR is installed.
yadr=$HOME/.yadr

# Get operating system
platform='unknown'
unamestr=$(uname)
if [[ $unamestr == 'Linux' ]]; then
  platform='linux'
elif [[ $unamestr == 'Darwin' ]]; then
  platform='darwin'
fi

# YADR support
alias yav='yadr vim-add-plugin'
alias ydv='yadr vim-delete-plugin'
alias ylv='yadr vim-list-plugin'
alias yup='yadr update-plugins'
alias yip='yadr init-plugins'

# PS
alias psa="ps aux"
alias psg="ps aux | grep "
alias psr='ps aux | grep ruby'

# Moving around
alias cdb='cd -'
alias cls='clear;ls'

# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h'

if [[ $platform == 'linux' ]]; then
  alias ll='ls -lh --color=auto'
  alias ls='ls --color=auto'
elif [[ $platform == 'darwin' ]]; then
  alias ll='ls -lGh'
  alias ls='ls -Gh'
fi

# show me files matching "ls grep"
alias lsg='ll | grep'

# Alias Editing
TRAPHUP() {
  source $yadr/zsh/aliases.zsh
}

alias ae='vim $yadr/zsh/aliases.zsh' #alias edit
alias ar='source $yadr/zsh/aliases.zsh'  #alias reload
alias gar="killall -HUP -u \"$USER\" zsh"  #global alias reload

# vim using
mvim --version > /dev/null 2>&1
MACVIM_INSTALLED=$?
if [ $MACVIM_INSTALLED -eq 0 ]; then
  alias vi="vim -v"
  alias vim="mvim -v"
fi

# mimic vim functions
alias :q='exit'

# vimrc editing
alias ve='vim ~/.vimrc'

# zsh profile editing
alias zre='vim ~/.zshrc'
alias zrr='source ~/.zshrc'
alias zee='vim ~/.zshenv'
alias zer='source ~/.zshrc'

# Git Aliases
alias gs='git status'
alias gstsh='git stash'
alias gst='git stash'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsh='git show'
alias gshw='git show'
alias gshow='git show'
alias gi='vim .gitignore'
alias gcm='git ci -m'
alias gcim='git ci -m'
alias gci='git ci'
alias gco='git co'
alias gcp='git cp'
alias ga='git add -A'
alias gap='git add -p'
alias guns='git unstage'
alias gunc='git uncommit'
alias gm='git merge'
alias gms='git merge --squash'
alias gam='git amend --reset-author'
alias grv='git remote -v'
alias grr='git remote rm'
alias grad='git remote add'
alias gr='git rebase'
alias gra='git rebase --abort'
alias ggrc='git rebase --continue'
alias gbi='git rebase --interactive'
alias gl='git l'
alias glg='git l'
alias glog='git l'
alias co='git co'
alias gf='git fetch'
alias gfp='git fetch --prune'
alias gfa='git fetch --all'
alias gfap='git fetch --all --prune'
alias gfch='git fetch'
alias gd='git diff'
alias gb='git b'
# Staged and cached are the same thing
alias gdc='git diff --cached -w'
alias gds='git diff --staged -w'
alias gpub='grb publish'
alias gtr='grb track'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gps='git push'
alias gpsh='git push -u origin `git rev-parse --abbrev-ref HEAD`'
alias gnb='git nb' # new branch aka checkout -b
alias grs='git reset'
alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gclndfx='git clean -dfx'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gt='git t'
alias gbg='git bisect good'
alias gbb='git bisect bad'
alias gdmb='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias gbl='git blame'

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias screen='TERM=screen screen'
alias cl='clear'

# Zippin
alias gz='tar -zcvf'

alias ka9='killall -9'
alias k9='kill -9'

# TODOS
# This uses NValt (NotationalVelocity alt fork) - http://brettterpstra.com/project/nvalt/
# to find the note called 'todo'
alias todo='open nvalt://find/todo'

# Forward port 80 to 3000
alias portforward='sudo ipfw add 1000 forward 127.0.0.1,3000 ip from any to any 80 in'

# Finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Homebrew
alias brewu='brew update && brew upgrade && brew cleanup && brew doctor'

## mine

# misc
alias ec='emacsclient -c'
alias et='emacsclient -t'
alias sedi="sed -i ''"
alias digs='dig +short'
alias htop='sudo htop'
alias gcafpf='gcaf && git push --force'
alias dark='osascript -e '"'"'tell application "System Events" to sleep'"'"''
alias genpw='LC_ALL=C tr -dc "[:alpha:][:alnum:]" < /dev/urandom | head -c'
alias en='echo -n '

# git
alias gpu='git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)'
alias gcaf='git commit --all --amend --reuse-message HEAD'
alias gstl='git stash list'
alias gsts='git stash save'
alias gstp='git stash pop'
alias gsta='git stash apply'
alias gstd='git stash drop'
alias gstsh='git stash show'
alias gstcl='git stash clear'
alias gcad='git commit --amend --date="now"'
alias gcl='git clone'
alias grp='git rev-parse HEAD'
alias ghcl='github-clone'

# paths
alias ats='cd $HOME/src/github.com/advancedtelematic'
alias taheris='cd $HOME/src/github.com/taheris'

# go
alias gor='go run'
alias gog='go generate'
alias got='go test'
alias gotv='go test -v'
alias goti='go test -tags=integration'
alias gotiv='go test -tags=integration -v'
alias gotr='go test ./...'
alias gotrv='go test ./... -v'
alias gob='go test -run=NONE -bench=.'

# docker
alias dr='docker run --rm'
alias drit='docker run --interactive --tty --rm'
alias dst='docker start'
alias dsp='docker stop'
alias dps='docker ps'
alias dpsa='docker ps --all'
alias dim='docker images'
alias dima='docker images --all'
alias db='docker build --force-rm'
alias dbt='docker build --force-rm --tag'
alias dp='docker push'
alias dpl='docker pull'
alias ddf='docker diff'
alias dx='docker exec'
alias dxit='docker exec --interactive --tty'
alias dxitr='docker exec --interactive --tty --user 0'
alias dk='docker kill'
alias dlg='docker logs'
alias dlgf='docker logs --follow'
alias dt='docker tag'
alias drm='docker rm'
alias drmf='docker rm --force'
alias drmi='docker rmi'
alias dhi='docker history'
alias dcr='docker create'
alias dcp='docker cp'
alias dc='docker-compose'

# docker-machine
alias dm='docker-machine'
alias dmst='docker-machine start'
alias dmstd='docker-machine start docker'
alias dmsp='docker-machine stop'
alias dmspd='docker-machine stop docker'
alias dmssh='docker-machine ssh'
alias dmsshd='docker-machine ssh docker'
alias dmu='docker-machine upgrade'
alias dmud='docker-machine upgrade docker'
alias dmip='docker-machine ip'
alias dmipd='docker-machine ip docker'

# fleetctl
alias fclu='fleetctl list-units'
alias fclm='fleetctl list-machines'
alias fcluf='fleetctl list-unit-files'
alias fcs='fleetctl status'
alias fcj='fleetctl journal'
alias fcjf='fleetctl journal -f'
alias fcd='fleetctl destroy'
alias fcc='fleetctl cat'
alias fcst='fleetctl start'
alias fcsp='fleetctl stop'
alias fcssh='fleetctl ssh'

# pipe
alias -g X='| xargs '
alias -g XI='| xargs -I{} '
alias -g C='| xargs echo -n | pbcopy '
alias -g S='| sort '
alias -g U='| uniq '
alias -g H='| head '
alias -g T='| tail -n +2'
alias -g OC='| openssl s_client -ign_eof -connect'
alias -g W='| wc'
alias -g WC='| wc -c'
alias -g WL='| wc -l'
alias -g WW='| wc -w'

# redirect
alias -g N='>/dev/null'
alias -g ON='1>/dev/null'
alias -g EN='2>/dev/null'
alias -g EO='2>&1'

# awk
alias -g A1='| awk '"'"'{print $1}'"'"''
alias -g A2='| awk '"'"'{print $2}'"'"''
alias -g A3='| awk '"'"'{print $3}'"'"''
alias -g A4='| awk '"'"'{print $4}'"'"''
alias -g A5='| awk '"'"'{print $5}'"'"''
alias -g A6='| awk '"'"'{print $6}'"'"''
alias -g A7='| awk '"'"'{print $7}'"'"''
alias -g A8='| awk '"'"'{print $8}'"'"''
alias -g A9='| awk '"'"'{print $9}'"'"''

# vagrant
alias vb='vagrant box'
alias vd='vagrant destroy'
alias vdf='vagrant destroy --force'
alias vgs='vagrant global-status'
alias vh='vagrant halt'
alias vhf='vagrant halt --force'
alias vr='vagrant resume'
alias vss='vagrant snapshot'
alias vsst='vagrant snapshot take'
alias vssg='vagrant snapshot go'
alias vssl='vagrant snapshot list'
alias vssh='vagrant ssh'
alias vs='vagrant status'
alias vu='vagrant up'

# cargo
alias cb='cargo build'
alias cbr='cargo build --release'
alias cbrm='cargo build --release --target=x86_64-unknown-linux-musl'
alias cdoc='cargo doc'
alias cn='cargo new'
alias ct='cargo test'
alias cr='cargo run'
alias cben='cargo bench'
alias cup='cargo update'
alias cs='cargo search'
alias ci='cargo install'
alias dritc='docker run --rm -it -e CARGO_HOME=/cargo -v ~/.cargo:/cargo -v $PWD:/build -w /build'
alias dritcr17='dritc jimmycuadra/rust:1.7.0'
alias dritcr18='dritc jimmycuadra/rust:1.8.0'
alias dritcmr='dritc clux/muslrust'
alias dritnh='drit --net=host'

# rustup
alias ru='rustup'
alias rus='rustup show'
alias ruu='rustup update'
alias rud='rustup default'
alias rut='rustup toolchain'
alias rutl='rustup toolchain list'
alias ruti='rustup toolchain install'
alias rutu='rustup toolchain uninstall'
alias ruta='rustup target'
alias rutal='rustup target list'
alias rutaa='rustup target add'
alias rutar='rustup target remove'
alias ruo='rustup override'
alias ruol='rustup override list'
alias ruos='rustup override set'
alias ruou='rustup override unset'
alias rur='rustup run'
alias ruw='rustup which'
alias rudoc='rustup doc'
alias ruh='rustup help'

# ota-integration-builder
alias oib='$HOME/src/github.com/advancedtelematic/pro/tools/ota-integration-builder/ota-builder.py'
alias oibh='oib --help'
alias oibpl='oib --pull'
alias oibst='oib --start'
alias oibsp='oib --stop'
alias oibdr='oib --dry-run'
alias oibt='oib --test'
alias oibb='oib --build'
alias oibr='oib --restart'

# ripgrep
alias rg='rg --follow'
alias rgb='rg-boundary'
alias rgt='rg --type'
alias rgc='rg --type c'
alias rgcmake='rg --type cmake'
alias rgcpp='rg --type cpp'
alias rgcss='rg --type css'
alias rggo='rg --type go'
alias rghtml='rg --type html'
alias rgjs='rg --type js'
alias rgjson='rg --type json'
alias rgmd='rg --type markdown'
alias rgorg='rg --type org'
alias rgpy='rg --type py'
alias rgrm='rg --type readme'
alias rgrb='rg --type ruby'
alias rgrs='rg --type rust'
alias rgrs='rg --type rust'
alias rgsc='rg --type scala'
alias rgsh='rg --type sh'
alias rgsql='rg --type sql'
alias rgsw='rg --type swift'
alias rgtoml='rg --type toml'
alias rgtxt='rg --type txt'
alias rgxml='rg --type xml'

# brew services
alias bsl='brew services list'
alias bsr='brew services run'
alias bsst='brew services start'
alias bssp='brew services stop'
alias bsrs='brew services restart'
alias bsc='brew services cleanup'

# brew cask
alias bcl='brew cask list'
alias bci='brew cask install'
alias bcu='brew cask uninstall'
alias bcr='brew cask reinstall'
alias bcs='brew cask search'
alias bcin='brew cask info'
alias bcf='brew cask fetch'
alias bco='brew cask outdated'
alias bcz='brew cask zap'
