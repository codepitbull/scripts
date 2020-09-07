whoseport() { lsof -i ":$1" -sTCP:LISTEN }
yub() { ssh-add -e /usr/local/lib/libykcs11.dylib || true;ssh-add -s /usr/local/lib/libykcs11.dyllib }
rss () { ps -o pid,rss,command | grep --color $1 | awk '{$2=int($2/1024)"M";}{ print;}' }
k8s_clean_ns () { kubectl get $1 -n $2 | awk 'FNR > 1 {print $1}' | xargs -I '{}' kubectl delete $1 {} --force -n $2 }
alias 'timestamp=~/.dotfiles/bin/print_timestamp.sh'
alias 'v=~/.dotfiles/bin/vagrant_helper.sh'
alias 'new_maven=~/.dotfiles/bin/new_maven.sh'
alias 'new_sbt=~/.dotfiles/bin/new_sbt.sh'
alias 'new_go=~/.dotfiles/bin/new_go.sh'
alias 'docker_bash=~/.dotfiles/bin/docker_bash.sh'
alias 'git_rm_gone_branches=~/.dotfiles/bin/git_rm_gone_branches.sh'
git config --global core.hooksPath ~/.dotfiles/git-hooks
