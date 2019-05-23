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
alias psw="ps ww"
alias psa="ps auxww"

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

## mine

# global expansions
alias -g H=' --help'
alias -g V=' --version'
alias -g C='| pbcopy '
alias -g G='| grep'
alias -g EG='| egrep'
alias -g FG='| fgrep'
alias -g L="| less"
alias -g S='| sort'
alias -g U='| uniq '
alias -g X='| xargs '
alias -g XI='| xargs -I{} '
alias -g HH='| head -n 1'
alias -g TT='| tail -n -1'
alias -g T='| tail -n +2'
alias -g CC='| wc -c'
alias -g CL='| wc -l'
alias -g CW='| wc -w'
alias -g LC='| tr "[:upper:]" "[:lower:]"'
alias -g UC='| tr "[:lower:]" "[:upper:]"'
alias -g OC='| openssl s_client -ign_eof -connect'

# redirects
alias -g N='>/dev/null'
alias -g ON='1>/dev/null'
alias -g EN='2>/dev/null'
alias -g EO='2>&1'
alias -g IR='</dev/urandom'
alias -g IZ='</dev/zero'

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
alias -g AL='| awk '"'"'{print $NF}'"'"''

# misc
alias sudo='sudo '
alias llh='ll -H'
alias sedi="sed -i ''"
alias digs='dig +short'
alias dark='osascript -e '"'"'tell application "System Events" to sleep'"'"''
alias pw='LC_ALL=C tr -dc "[:print:]" < /dev/urandom | head -c'
alias en='echo -n '
alias bc='bc --mathlib'
alias ensime="ctags -Re . && sbt clean ensimeConfig test:compile ensimeServerIndex"
alias locf='loc --files'
alias locu='loc -uu'
alias t2='tree -L 2'
alias iso='date -u +"%Y-%m-%dT%H:%M:%SZ"'
alias sql='sqlite3 -column -header -batch'
alias fdh='fd --hidden --no-ignore --follow'

# cd
alias gh='cd ~/src/github.com'

# du
alias du0='du -d 0'
alias du1='du -d 1'
alias du1s='du -d 1 | sort --human-numeric-sort'
alias du2='du -d 2'
alias du2s='du -d 2 | sort --human-numeric-sort'
alias du3='du -d 3'
alias du3s='du -d 3 | sort --human-numeric-sort'

# plist
alias plp='plutil -p --'
alias plj='plutil -convert json -r -o - --'
alias plx='plutil -convert xml1 -o - --'
alias plb='plutil -convert binary1 -o - --'

# brew
alias bi='brew info'
alias bin='brew install'
alias bun='brew uninstall'
alias bl='brew list'
alias bln='brew link'
alias blno='brew link --overwrite'
alias buln='brew unlink'
alias bs='brew search'
alias bup='brew update \
  && brew upgrade \
  && brew cask upgrade \
  && brew cleanup \
  && brew doctor'

# brew services
alias bsl='brew services list'
alias bsr='brew services run'
alias bsst='brew services start'
alias bssp='brew services stop'
alias bsrs='brew services restart'
alias bsc='brew services cleanup'

# brew cask
alias bcl='brew cask list'
alias bci='brew cask info'
alias bcin='brew cask install'
alias bcun='brew cask uninstall'
alias bcrn='brew cask reinstall'
alias bcf='brew cask fetch'
alias bco='brew cask outdated'
alias bcz='brew cask zap'

# git
alias gpu='git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)'
alias gbsu='branch=$(git rev-parse --abbrev-ref HEAD); git branch --set-upstream-to="origin/${branch}" "${branch}"'
alias gcl='git clone'
alias grp='git rev-parse HEAD'
alias ghcl='github-clone'
alias gdw='git diff --ignore-all-space'

alias gca='git commit --verbose --all'
alias gcaf='git commit --all --amend --reuse-message HEAD'
alias gcafpf='git commit --all --amend --reuse-message HEAD && git push --force'
alias gcad='git commit --amend --date="now"'

alias gstl='git stash list'
alias gsts='git stash save'
alias gstp='git stash pop'
alias gsta='git stash apply'
alias gstd='git stash drop'
alias gstsh='git stash show'
alias gstcl='git stash clear'

alias gsmup='git submodule update'
alias gsmupr='git submodule update --recursive'
alias gsmuprr='git submodule update --recursive --remote'
alias gsmupir='git submodule update --init --recursive'
alias gsmupirr='git submodule update --init --recursive --remote'

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
alias dr='docker run --interactive --tty --rm'
alias drr='docker run --interactive --tty --user 0:0'
alias dru="$(printf 'docker run --interactive --tty --user %s:%s' $(id -u) $(id -g))"
alias drc='docker run --interactive --tty --env CARGO_HOME=/cargo --volume ~/.cargo:/cargo --volume ${PWD}:/build --workdir /build'
alias drnh='docker run --interactive --tty --rm --net=host'
alias drnx='docker run --detach --restart always --name nix-docker --publish 3022:22 lnl7/nix:ssh'

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
alias dx='docker exec --interactive --tty'
alias dxr='docker exec --interactive --tty --user 0:0'
alias dxu='docker exec --interactive --tty --user "$(id -u):$(id -g)"'
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

# docker-compose
alias dc='docker-compose'
alias dcb='docker-compose build'
alias dcc='docker-compose config'
alias dccr='docker-compose create'
alias dcd='docker-compose down --timeout 0'
alias dcev='docker-compose events'
alias dcx='docker-compose exec'
alias dcim='docker-compose images'
alias dck='docker-compose kill'
alias dclg='docker-compose logs'
alias dcps='docker-compose ps'
alias dcpl='docker-compose pull'
alias dcps='docker-compose push'
alias dcrs='docker-compose restart --timeout 0'
alias dcrm='docker-compose rm'
alias dcrn='docker-compose run'
alias dcst='docker-compose start'
alias dcsp='docker-compose stop --timeout 0'
alias dct='docker-compose top'
alias dcu='docker-compose up --timeout 0'

# docker-machine
alias dm='docker-machine'
alias dmst='docker-machine start'
alias dmstd='docker-machine start docker'
alias dmsp='docker-machine stop'
alias dmspd='docker-machine stop docker'
alias dmssh='docker-machine ssh'
alias dmsshd='docker-machine ssh docker'
alias dmup='docker-machine upgrade'
alias dmupd='docker-machine upgrade docker'
alias dmip='docker-machine ip'
alias dmipd='docker-machine ip docker'

# vagrant
alias vb='vagrant box'
alias vdy='vagrant destroy'
alias vdyf='vagrant destroy --force'
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
alias ccln='cargo clean'
alias cdoc='cargo doc'
alias cn='cargo new'
alias cr='cargo run'
alias ct='cargo test'
alias ctnc='cargo test -- --nocapture'
alias cbn='cargo bench'
alias cup='cargo update'
alias cupp='cargo update --package'
alias cs='cargo search'
alias cin='cargo install'
alias cinf='cargo install --force'
alias cun='cargo uninstall'
alias cnb='cargo +nightly build'
alias cnbr='cargo +nightly build --release'
alias cnn='cargo +nightly new'
alias cnt='cargo +nightly test'
alias cnr='cargo +nightly run'
alias cnin='cargo +nightly install'
alias cninf='cargo +nightly install --force'
alias cnun='cargo +nightly uninstall'

# rustup
alias ru='rustup'
alias rus='rustup show'
alias ruup='rustup update'
alias rusup='rustup self update'
alias rud='rustup default'
alias rutc='rustup toolchain'
alias rutcl='rustup toolchain list'
alias rutcin='rustup toolchain install'
alias rutcun='rustup toolchain uninstall'
alias ruta='rustup target'
alias rutal='rustup target list'
alias rutaa='rustup target add'
alias rutar='rustup target remove'
alias rucl='rustup component list'
alias ruca='rustup component add'
alias rucr='rustup component remove'
alias ruo='rustup override'
alias ruol='rustup override list'
alias ruos='rustup override set'
alias ruou='rustup override unset'
alias rur='rustup run'
alias ruw='rustup which'
alias rudoc='rustup doc'
alias ruh='rustup help'

# ripgrep
alias rg='rg --sort-files --follow --max-columns 180'
alias rgi='rg --sort-files --follow --max-columns 180 --no-ignore'
alias rgb='rg-boundary'
alias rgl='rg-limit'
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
alias rgsc='rg --type scala'
alias rgsh='rg --type sh'
alias rgsql='rg --type sql'
alias rgsw='rg --type swift'
alias rgtoml='rg --type toml'
alias rgtxt='rg --type txt'
alias rgxml='rg --type xml'

# jira
alias jas='jira assign'
alias jcr='jira create'
alias jatc='jira attach create'
alias jatg='jira attach get'
alias jatl='jira attach list'
alias jatrm='jira attach remove'
alias jblk='jira block'
alias jbr='jira browse'
alias jco='jira comment'
alias jed='jira edit'
alias jea='jira epic add'
alias jec='jira epic create'
alias jel='jira epic list'
alias jerm='jira epic remove'
alias jln='jira issuelink'
alias jlnt='jira issuelinktypes'
alias jit='jira issuetypes'
alias jla='jira labels add'
alias jlrm='jira labels remove'
alias jls='jira labels set'
alias jl='jira list'
alias jli='jira login'
alias jlo='jira logout'
alias jsub='jira subtask'
alias juas='jira unassign'
alias jv='jira view'
alias jwa='jira watch'
alias jwla='jira worklog add'
alias jwll='jira worklog list'

# jira state transitions
alias jack='jira acknowledge'
alias jbl='jira backlog'
alias jcl='jira close'
alias jd='jira done'
alias jip='jira in-progress'
alias jro='jira reopen'
alias jres='jira resolve'
alias jst='jira start'
alias jsp='jira stop'
alias jtd='jira todo'
alias jt='jira transition'
alias jtl='jira transitions'

# kubernetes
alias k='kubectl'
alias ka='kubectl apply'
alias kaf='kubectl apply --filename'
alias klg='kubectl logs'
alias klgf='kubectl logs --follow'
alias kp='kubectl proxy'
alias kpf='kubectl port-forward'
alias kr='kubectl run --rm --stdin --tty'
alias kx='kubectl exec --stdin --tty'

alias kg='kubectl get'
alias kga='kubectl get all'
alias kgd='kubectl get deployment'
alias kgi='kubectl get ingress'
alias kgj='kubectl get jobs'
alias kgp='kubectl get pods'
alias kgpv="kubectl get pods -o json | jq -r '.items | .[] | (.spec?.containers? | .[]? | .image?)' | sort --unique"
alias kgn='kubectl get nodes'
alias kgcm='kubectl get configmap'
alias kgns='kubectl get namespaces'
alias kgpv='kubectl get persistentvolumes'
alias kgpvc='kubectl get persistentvolumeclaims'
alias kgsec='kubectl get secret'
alias kgsvc='kubectl get service'
alias kgss='kubectl get statefulset'

alias kd='kubectl describe'
alias kda='kubectl describe all'
alias kdd='kubectl describe deployment'
alias kdi='kubectl describe ingress'
alias kdj='kubectl describe jobs'
alias kdp='kubectl describe pods'
alias kdn='kubectl describe nodes'
alias kdcm='kubectl describe configmap'
alias kdns='kubectl describe namespaces'
alias kdpv='kubectl describe persistentvolumes'
alias kdpvc='kubectl describe persistentvolumeclaims'
alias kdsec='kubectl describe secret'
alias kdsvc='kubectl describe service'
alias kdss='kubectl describe statefulset'

alias kccc='kubectl config current-context'
alias kcdc='kubectl config delete-context'
alias kcdcl='kubectl config delete-cluster'
alias kcgc='kubectl config get-contexts'
alias kcgcl='kubectl config get-clusters'
alias kcrc='kubectl config rename-context'
alias kcs='kubectl config set'
alias kcsc='kubectl config set-context'
alias kcscl='kubectl config set-cluster'
alias kcscr='kubectl config set-credentials'
alias kcu='kubectl config unset'
alias kcuc='kubectl config use-context'
alias kcv='kubectl config view'

alias ked='kubectl edit'
alias keda='kubectl edit all'
alias kedd='kubectl edit deployment'
alias kedi='kubectl edit ingress'
alias kedj='kubectl edit jobs'
alias kedp='kubectl edit pods'
alias kedn='kubectl edit nodes'
alias kedcm='kubectl edit configmap'
alias kedns='kubectl edit namespaces'
alias kedpv='kubectl edit persistentvolumes'
alias kedpvc='kubectl edit persistentvolumeclaims'
alias kedsec='kubectl edit secret'
alias kedsvc='kubectl edit service'
alias kedss='kubectl edit statefulset'

alias kdel='kubectl delete'
alias kdeld='kubectl delete deployment'
alias kdeli='kubectl delete ingress'
alias kdelj='kubectl delete jobs'
alias kdelp='kubectl delete pods'
alias kdeln='kubectl delete nodes'
alias kdelcm='kubectl delete configmap'
alias kdelns='kubectl delete namespaces'
alias kdelpv='kubectl delete persistentvolumes'
alias kdelpvc='kubectl delete persistentvolumeclaims'
alias kdelsec='kubectl delete secret'
alias kdelsvc='kubectl delete service'
alias kdelss='kubectl delete statefulset'

alias krm='kubectl delete'
alias krmd='kubectl delete deployment'
alias krmi='kubectl delete ingress'
alias krmj='kubectl delete jobs'
alias krmp='kubectl delete pods'
alias krmn='kubectl delete nodes'
alias krmcm='kubectl delete configmap'
alias krmns='kubectl delete namespaces'
alias krmpv='kubectl delete persistentvolumes'
alias krmpvc='kubectl delete persistentvolumeclaims'
alias krmsec='kubectl delete secret'
alias krmsvc='kubectl delete service'
alias krmss='kubectl delete statefulset'

alias -g NA=' --all-namespaces'
alias -g NI=' --namespace=ingress-nginx'
alias -g NS=' --namespace=kube-system'

# minikube
alias mk='minikube'
alias mks='minikube status'
alias mkst='minikube start'
alias mksp='minikube stop'
alias mkssh='minikube ssh'
alias mkdel='minikube delete'
alias mkd='minikube dashboard'
alias mkenv='minikube docker-env'
alias mkip='minikube ip'
alias mklg='minikube logs'
alias mklgf='minikube logs --follow'
alias mkmt='minikube mount'

alias mkc='minikube config'
alias mkcg='minikube config get'
alias mkcs='minikube config set'
alias mkcu='minikube config unset'
alias mkcv='minikube config view'

alias mka='minikube addons'
alias mkac='minikube addons configure'
alias mkad='minikube addons disable'
alias mkae='minikube addons enable'
alias mkal='minikube addons list'
alias mkao='minikube addons open'

# step certificates
alias stcc='step certificate create'
alias stcs='step certificate sign'
alias stcb='step certificate bundle'
alias stci='step certificate inspect'
alias stcij='step certificate inspect --format json'
alias stcv='step certificate verify'
alias stcf='step certificate fingerprint'
alias stck='step certificate key'
alias stcin='step certificate install'
alias stcun='step certificate uninstall'

# step ca
alias stcai='step ca init'
alias stcat='step ca token'
alias stcac='step ca certificate'
alias stcab='step ca bootstrap'
alias stcas='step ca sign'
alias stcar='step ca root'
alias stcars='step ca roots'
alias stcarn='step ca renew'
alias stcap='step ca provisioner'
alias stcah='step ca health'
alias stcaf='step ca federation'

# step crypto
alias stcrf='step crypto jose format'
alias stcrh='step crypto hash'
alias stcrk='step crypto key'
alias stcrkp='step crypto keypair'
alias stcrcp='step crypto change-pass'
alias stjwk='step crypto jwk'
alias stjwe='step crypto jwe'
alias stjws='step crypto jws'
alias stotp='step crypto otp'

# gron
alias gr='gron'
alias gru='gron --ungron'
alias grns='gron --no-sort'

alias -g GR='| gron'
alias -g GRG='| gron | grep'
alias -g GRU='| gron --ungron'
