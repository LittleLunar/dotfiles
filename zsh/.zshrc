# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
source ~/.zshrc.aliases
source ~/.zshrc.paths
source ~/.zshrc.plugins

export HOMEBREW_NO_INSTALL_CLEANUP=TRUEexport PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export ANDROID_HOME=/Users/littlelunar/Library/Android/sdk
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/emulator

eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/lunardev-3.omp.json)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval "$(rbenv init - zsh)"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
