whoseport() { lsof -i ":$1" -sTCP:LISTEN }

alias 'timestamp=~/.dotfiles/bin/print_timestamp.sh'
alias 'v=~/.dotfiles/bin/vagrant_helper.sh'
alias 'new_maven=~/.dotfiles/bin/new_maven.sh'
alias 'new_sbt=~/.dotfiles/bin/new_sbt.sh'
alias 'docker_bash=~/.dotfiles/bin/docker_bash.sh'
alias 'git_rm_gone_branches=~/.dotfiles/bin/git_rm_gone_branches.sh'
