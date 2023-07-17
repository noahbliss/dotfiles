export PATH=$PATH:$HOME/bin

# Mac Stuff
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
if [ -d "$HOME/Library/Python/3.9/bin" ]; then export PATH=$PATH:"$HOME/Library/Python/3.9/bin"; fi


# This next line is dirty, but better than nothing. 
test -e "$HOME/.config/antigen.zsh" || (command -v curl >/dev/null && curl -L git.io/antigen > $HOME/.config/antigen.zsh) || (command -v wget > /dev/null && wget git.io/antigen -O  $HOME/.config/antigen.zsh) || echo "antigen not found and I couldn't download it."
source "$HOME/.config/antigen.zsh"

antigen use oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle command-not-found
#antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme af-magic

antigen apply
