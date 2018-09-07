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
alias ec='emacsclient -c'
alias et='emacsclient -t'
alias sedi="sed -i ''"
alias digs='dig +short'
alias dark='osascript -e '"'"'tell application "System Events" to sleep'"'"''
alias genpw='LC_ALL=C tr -dc "[:alpha:][:alnum:]" < /dev/urandom | head -c'
alias en='echo -n '
alias bc='bc --mathlib'
alias ensime="ctags -Re . && sbt clean ensimeConfig test:compile ensimeServerIndex"
alias locf='loc --files'
alias locu='loc -uu'
alias t2='tree -L 2'
alias iso='date -u +"%Y-%m-%dT%H:%M:%SZ"'
alias sql='sqlite3 -column -header -batch'

# cd
alias gh='cd $HOME/src/github.com'
alias ats='cd $HOME/src/github.com/advancedtelematic'

# git
alias gpu='git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)'
alias gcaf='git commit --all --amend --reuse-message HEAD'
alias gcafpf='git commit --all --amend --reuse-message HEAD && git push --force'
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
alias gsmup='git submodule update'
alias gsmupr='git submodule update --recursive'
alias gsmuprr='git submodule update --recursive --remote'

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
alias dc='docker-compose'

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
alias ccln='cargo clean'
alias cdoc='cargo doc'
alias cn='cargo new'
alias ct='cargo test'
alias cr='cargo run'
alias cben='cargo bench'
alias cup='cargo update'
alias cs='cargo search'
alias cin='cargo install'
alias cinf='cargo install --force'
alias cnb='cargo +nightly build'
alias cnbr='cargo +nightly build --release'
alias cnn='cargo +nightly new'
alias cnt='cargo +nightly test'
alias cnr='cargo +nightly run'

# rustup
alias ru='rustup'
alias rus='rustup show'
alias ruup='rustup update'
alias rud='rustup default'
alias rut='rustup toolchain'
alias rutl='rustup toolchain list'
alias rutin='rustup toolchain install'
alias rutun='rustup toolchain uninstall'
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

# brew
alias bi='brew info'
alias bin='brew install'
alias buin='brew uninstall'
alias bl='brew list'
alias bln='brew link'
alias blno='brew link --overwrite'
alias bs='brew search'
alias bup='brew update \
  && brew upgrade \
  && brew cask upgrade \
  && brew cleanup \
  && brew prune \
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

alias -g NA=' --all-namespaces'
alias -g NI=' --namespace=ingress-nginx'
alias -g NS=' --namespace=kube-system'

# minikube
alias mk='minikube'
alias mks='minikube status'
alias mkst='minikube start'
alias mksp='minikube stop'
alias mkdel='minikube delete'
alias mkd='minikube dashboard'
alias mkenv='minikube docker-env'
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

# lastpass
alias lp='lpass'
alias lps='lpass show --basic-regexp'
alias lpli='lpass login'
alias lplo='lpass logout'
alias lpst='lpass status'
alias lpsy='lpass sync'
alias lpls='lpass ls'
alias lpmv='lpass mv'
alias lpa='lpass add'
alias lped='lpass edit'
alias lpg='lpass generate'
alias lpd='lpass duplicate'
alias lprm='lpass rm'
alias lpep='lpass export'
alias lpip='lpass import'

# plist
alias plp='plutil -p --'
alias plj='plutil -convert json -r -o - --'
alias plx='plutil -convert xml1 -o - --'
alias plb='plutil -convert binary1 -o - --'

# nix
alias nxb='nix build'
alias nxb='nix build'
alias nxbf='nix build --file'
alias nxbp='nix build --file "<nixpkgs>"'
alias nxbs='nix build --file channel:nixos-18.03'
alias nxbu='nix build --file channel:nixos-unstable'
alias nxed='nix edit'
alias nxedf='nix edit --file'
alias nxedp='nix edit --file "<nixpkgs>"'
alias nxev='nix eval'
alias nxevf='nix eval --file'
alias nxevp='nix eval --file "<nixpkgs>"'
alias nxlg='nix log'
alias nxlgf='nix log --file'
alias nxlgp='nix log --file "<nixpkgs>"'
alias nxr='nix run'
alias nxrc='nix run --command'
alias nxrf='nix run --file'
alias nxrp='nix run --file "<nixpkgs>"'
alias nxs='nix search'
alias nxsf='nix search --file'
alias nxsp='nix search --file "<nixpkgs>"'
alias nxshd='nix show-derivation'
alias nxshdf='nix show-derivation --file'
alias nxshdp='nix show-derivation --file "<nixpkgs>"'
alias nxv='nix verify'
alias nxvf='nix verify --file'
alias nxvp='nix verify --file "<nixpkgs>"'

alias nxrpl='nix repl'
alias nxcn='nix cat-nar'
alias nxcs='nix cat-store'
alias nxas='nix add-to-store'
alias nxcp='nix copy'
alias nxcpf='nix copy --from'
alias nxcpt='nix copy --to'
alias nxcps='nix copy-sigs'
alias nxdp='nix dump-path'
alias nxhf='nix hash-file'
alias nxhf16='nix hash-file --base16 --type sha256'
alias nxhf32='nix hash-file --base32 --type sha256'
alias nxhf64='nix hash-file --base64 --type sha256'
alias nxhp='nix hash-path'
alias nxhp16='nix hash-path --base16 --type sha256'
alias nxhp32='nix hash-path --base32 --type sha256'
alias nxhp64='nix hash-path --base64 --type sha256'
alias nxls='nix ls-store'
alias nxlsn='nix ls-nar'
alias nxopt='nix optimise-store'
alias nxpi='nix path-info'
alias nxps='nix ping-store --store'
alias nxshc='nix show-config'
alias nxshcj='nix show-config --json'
alias nxsp='nix sign-paths'
alias nx16='nix to-base16'
alias nx32='nix to-base32'
alias nx64='nix to-base64'
alias nxup='nix upgrade-nix'
alias nxwd='nix why-depends'

# nix-channel
alias nxcha='nix-channel --add'
alias nxchrm='nix-channel --remove'
alias nxchl='nix-channel --list'
alias nxchup='nix-channel --update'
alias nxchrb='nix-channel --rollback'

# nix-collect-garbage
alias nxcg='nix-collect-garbage'
alias nxcgdo='nix-collect-garbage --delete-old'
alias nxcgdot='nix-collect-garbage --delete-older-than'

# nix-env
alias nxe='nix-env'
alias nxein='nix-env --install'
alias nxeina='nix-env --install --attr'
alias nxeins='nix-env --install --file channel:nixos-18.03'
alias nxeinu='nix-env --install --file channel:nixos-unstable'
alias nxeuin='nix-env --uninstall'
alias nxeup='nix-env --upgrade'
alias nxeupa='nix-env --upgrade --always'
alias nxeq='nix-env --query'
alias nxeqa='nix-env --query --available'
alias nxeqaj='nix-env --query --available --json'
alias nxeqas='nix-env --query --available --status'
alias nxesf='nix-env --set-flag'
alias nxelg='nix-env --list-generations'
alias nxesg='nix-env --switch-generation'
alias nxedelg='nix-env --delete-generations'
alias nxedelgo='nix-env --delete-generations old'
alias nxerb='nix-env --rollback'

# nix-instantiate
alias nxi='nix-instantiate'
alias nxie='nix-instantiate --eval'
alias nxiea='nix-instantiate --eval --attr'
alias nxiee='nix-instantiate --eval --expr'
alias nxiej='nix-instantiate --eval --json'
alias nxip='nix-instantiate --parse'
alias nxipa='nix-instantiate --parse --attr'

# nix-prefetch-url
alias nxpf='nix-prefetch-url --print-path'
alias nxpfu='nix-prefetch-url --print-path --unpack'

# nix-shell
alias nxsh='nix-shell'
alias nxshp='nix-shell --packages'

# nix-store
alias nxst='nix-store'
alias nxstr='nix-store --realise'
alias nxstd='nix-store --dump'
alias nxstrs='nix-store --restore'
alias nxstqr='nix-store --query --references'
alias nxstqrr='nix-store --query --referrers'
alias nxstqt='nix-store --query --tree'

# nixops
alias nxo='nixops'
alias nxoc='nixops create'
alias nxocd='nixops create --deployment'
alias nxod='nixops deploy'
alias nxodd='nixops deploy --deployment'
alias nxoi='nixops info'
alias nxoid='nixops info --deployment'
alias nxol='nixops list'
alias nxold='nixops list --deployment'
alias nxoed='nixops edit'
alias nxoedd='nixops edit --deployment'
alias nxom='nixops modify'
alias nxomd='nixops modify --deployment'
alias nxodel='nixops delete'
alias nxodeld='nixops delete --deployment'
alias nxocl='nixops clone'
alias nxocld='nixops clone --deployment'
alias nxoch='nixops check'
alias nxochd='nixops check --deployment'
alias nxosa='nixops set-args'
alias nxosad='nixops set-args --deployment'
alias nxosk='nixops send-keys'
alias nxoskd='nixops send-keys --deployment'
alias nxody='nixops destroy'
alias nxodyd='nixops destroy --deployment'
alias nxost='nixops start'
alias nxostd='nixops start --deployment'
alias nxosp='nixops stop'
alias nxospd='nixops stop --deployment'
alias nxorb='nixops reboot'
alias nxorbd='nixops reboot --deployment'
alias nxosha='nixops show-arguments'
alias nxoshad='nixops show-arguments --deployment'
alias nxoshp='nixops show-physical'
alias nxoshpd='nixops show-physical --deployment'
alias nxoshc='nixops show-console-output'
alias nxoshcd='nixops show-console-output --deployment'
alias nxosho='nixops show-option'
alias nxoshod='nixops show-option --deployment'
alias nxossh='nixops ssh'
alias nxosshd='nixops ssh --deployment'
alias nxosshfe='nixops ssh-for-each'
alias nxosshfed='nixops ssh-for-each --deployment'
alias nxoscp='nixops scp'
alias nxoscpd='nixops scp --deployment'
alias nxomt='nixops mount'
alias nxomtd='nixops mount --deployment'
alias nxorn='nixops rename'
alias nxornd='nixops rename --deployment'
alias nxobu='nixops backup'
alias nxobud='nixops backup --deployment'
alias nxobus='nixops backup-status'
alias nxobusd='nixops backup-status --deployment'
alias nxormbu='nixops remove-backup'
alias nxormbud='nixops remove-backup --deployment'
alias nxoclnbu='nixops clean-backups'
alias nxoclnbud='nixops clean-backups --deployment'
alias nxort='nixops restore'
alias nxortd='nixops restore --deployment'
alias nxolg='nixops list-generations'
alias nxolgd='nixops list-generations --deployment'
alias nxorb='nixops rollback'
alias nxorbd='nixops rollback --deployment'
alias nxodelg='nixops delete-generation'
alias nxodelgd='nixops delete-generation --deployment'
alias nxodp='nixops dump-nix-paths'
alias nxodpd='nixops dump-nix-paths --deployment'
alias nxoep='nixops export'
alias nxoepd='nixops export --deployment'
alias nxoip='nixops import'
alias nxoipd='nixops import --deployment'

# nix misc
alias -g ST=' --show-trace'
alias -g DR=' --dry-run'
