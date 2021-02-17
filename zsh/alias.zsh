alias reloadvim="source ~/.vimrc"
alias reloadzsh="source ~/.zshrc"
alias pc="vim ~/.zprezto"
alias zc="vim ~/.zshrc"
alias apps="vim ~/.laptop.local"
alias dot="mux start dotfiles"
alias shop="mux start mrdrive-shop"
alias vimrc="echo 'vc noob'"
alias vim="nvim"
alias vc="vim ~/.vimrc"
alias bim="vim"
alias vi="vim"
alias v="vim"
alias httpserver="ruby -rsocket -e \"trap('SIGINT') { exit }; Socket.tcp_server_loop(8080) { |s,_| puts s.readpartial(1024); puts; s.puts 'HTTP/1.1 200'; s.close }\""
alias coauth='printf "Co-authored-by: %s" "$(git log --pretty=format:"%an <%ae>" -1000 | sort | uniq | fzf)" | pbcopy'
alias batlog='bat --paging=never -l log'
alias ls='exa'
alias omd='open -a MacDown'

############# RUBY / RAILS #############
alias rv="ruby -v"
alias be='bundle exec'
alias bi='bundle install'
alias brs='bundle exec rails server'
alias brc='bundle exec rails console'
alias rdbm='bundle exec rake db:migrate'
alias rr='rails routes'
alias rrg='rails routes | ag'
alias audit_models='find app/models -type f -exec wc -l {} \; | sort -rn | head'
alias beg='spring stop;be guard'

############# HEROKU CLI #############
alias ha='heroku apps'
alias ho='heroku open'
alias hl='heroku logs -t'
alias hlp='heroku logs -r production -t'
alias hc='heroku config'
alias hco='heroku config'
alias hcop='heroku config -r production'
alias hcos='heroku config -r staging'
alias hcp='heroku console -r production'
alias hcs='heroku console -r staging'


############# GIT #############
alias gup='git pull --rebase'
alias gd='git diff --color | diff-so-fancy'
alias gst='git status'
alias gitx='open -a gitx .'
alias gunused='for k in $(git branch -a --merged|grep -v "\->"|sed s/^..//);do echo -e $(git log -1 --pretty=format:"%Cgreen%ci %Cred%cr%Creset" "$k")\\t"$k";done|sort'
alias t='tig status'
alias ta='tig --all'
alias g-='git checkout -'
alias fixgemfile='git checkout HEAD -- Gemfile.lock && bundle install'
alias gdw='git diff --word-diff | diff-so-fancy'
alias gr='git rebase'
alias go='git open'
alias gs='git stash'
alias gsp='git stash pop'
alias m='git checkout master && git pull'
alias gll='fzf_git_log'
alias grl='fzf_git_reflog'
alias clean_branch="git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -D"
alias gitfix='git diff --name-only | uniq | xargs code'
alias gcoo='git checkout $(git branch -a | cut -c 3- | fzf)'
alias gll='fzf_git_log'
alias ccb='git branch --show-current | pbcopy'
alias fix='$EDITOR `git diff --name-only | uniq`'

alias genctags='ctags -R .'
alias tmuxredraw='tmux detach -a'
alias fu='fuck'
alias hpr='hub pull-request'
alias hboom='gp && fuck && hpr && hb'
# evite d'escape des commandes entre quotes...
# unsetopt nomatch
# alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias findfuckingnginx="ps ax -o pid,ppid,%cpu,vsz,wchan,command|egrep '(nginx|PID)'"
alias killfuckingninx="kill $(findfuckingnginx | grep master | cut -d ' ' -f1)"
alias hb="hub browse"
alias csvgide="csvfix echo -sep \";\" | csvfix ascii_table -h @"
alias csvtable="csvfix ascii_table -h @"
alias clean_docker_images='docker rmi -f $(docker images -qf dangling=true)'
alias dcc='docker-compose'
alias clean_docker_volumes='docker volume rm $(docker volume ls -qf dangling=true)'
alias clean_docker_containers='docker ps -a -f status=exited -q | xargs  docker rm -v'
alias gbr='git recent'
alias gbc='git branch --show-current | pbcopy'
alias gpf='git push --force-with-lease'

alias fixpgstartup='rm -rf /usr/local/var/postgres/postmaster.pid'
alias freewifi="sudo ifconfig en0 ether `openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'`"
alias mux="tmuxinator"
alias ms="tmuxinator start"
alias cdd="cd ~/Downloads"
alias preview="fzf --preview 'bat --color \"always\" {}'"

alias meteo="curl wttr.in/La%20Madeleine"
