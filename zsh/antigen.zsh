source "$HOME/.antigen/antigen/antigen.zsh"

antigen use oh-my-zsh

antigen bundle brew
antigen bundle git
antigen bundle heroku
# antigen bundle command-not-found
antigen bundle compleat
antigen bundle git-extras
antigen bundle osx
# antigen bundle web-search
antigen bundle bundler
antigen bundle tmux
antigen bundle tmuxinator
antigen bundle github
antigen bundle postgres
# antigen bundle gusaiani/elixir-oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh
antigen bundle zsh-users/zsh-autosuggestions

# antigen theme bureau

antigen apply
