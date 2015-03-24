#########
#
#ONELOGIN
#
#########

# directories
alias src='cd ~/onelogin/src'
alias ola='cd ~/onelogin/src/onelogin.com/'
alias ocs='cd ~/onelogin/src/one-click-service/'

# environment
alias ss='script/server -u'
alias sp='bx script/puma'
alias sc='script/console'
alias fish='cd ~/onelogin/src/fish/onelogin.com' 
alias ssh-shadow='ssh pmehrotra@app.onelogin-shadow.com'
alias ssh-stage='ssh pmehrotra@app.onelogin.us'
alias pworker='bundle exec ruby workers/provisioning_worker.rb'
alias conewui='ola && git co master_newui && ola'

#RAILS
alias bx='bundle exec'
alias rs='bx rails s'
alias rc='bx rails c'
