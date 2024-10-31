# This is content to manually add to .zshrc

# manually added -START-------------------------------------------------

# source profile (is this needed?)
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'

# make aliases defined in ~/.bash_aliases work
#   that is as oh-my-zsh defines aliases itself in places like
#   $ZSH/lib/directories.zsh or by plugins in $ZSH/plugins
#   (plugins are usually added in here - ~/.zshrc)
source ~/.bash_aliases

# auto-start ssh agent
# with that, I can manually run `ssh-add ~/.ssh/id_rsa` to add the key
[ -z "$SSH_AUTH_SOCK" ] && eval "$(ssh-agent -s)" > /dev/null

# make pipenv use .venv folder in project
export PIPENV_VENV_IN_PROJECT=1

# do not run pip outside a virtual env
export PIP_REQUIRE_VIRTUALENV=true

# manually added -END---------------------------------------------------
