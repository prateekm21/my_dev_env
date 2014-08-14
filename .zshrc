
PATH=~/.rbenv/shims:/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH

if [[ -r ~/.aliasrc ]]; then
   source ~/.aliasrc
fi

#History
# number of lines kept in history
export HISTSIZE=10000
# number of lines saved in the history after logout
export SAVEHIST=10000
# location of history
export HISTFILE=~/.zhistory
# append command to history file once executed
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY

#Auto completion
autoload -U compinit && compinit
setopt complete_in_word
zstyle ':completion:*' menu select=20
#Auto complete
autoload -U compinit && compinit
#Globbing
setopt extended_glob

#custom prompt
PROMPT=$'%/[%t] $'

#method for git branch in prompt

# Initialize colors.
autoload -U colors
colors
 
# Allow for functions in the prompt.
setopt PROMPT_SUBST
 
# Autoload zsh functions.
fpath=(~/.zsh/functions $fpath)
autoload -U ~/.zsh/functions/*(:t)
 
# Enable auto-execution of functions.
typeset -ga preexec_functions
typeset -ga precmd_functions
typeset -ga chpwd_functions
 
# Append git functions needed for prompt.
preexec_functions+='preexec_update_git_vars'
precmd_functions+='precmd_update_git_vars'
chpwd_functions+='chpwd_update_git_vars'
 
# Set the prompt.
PROMPT=$'%{${fg[cyan]}%}%B%~%b$(prompt_git_info)%{${fg[default]}%} '

EDITOR='vim'
