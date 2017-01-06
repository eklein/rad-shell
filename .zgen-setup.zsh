source "${HOME}/.zgen/zgen.zsh"
# if the init scipt doesn't exist
if ! zgen saved; then
  # Disable loading default Prezto modules
  # This is necessary due to a quirk of zgen that will load these plugins after
  # our custom plugins, overwriting our customizations
  # https://github.com/tarjoilija/zgen/issues/74
  export ZGEN_PREZTO_LOAD_DEFAULT=0

  zgen prezto

  # Default plugins
  zgen load sorin-ionescu/prezto modules/environment
  zgen load sorin-ionescu/prezto modules/terminal
  zgen load sorin-ionescu/prezto modules/editor
  zgen load sorin-ionescu/prezto modules/history
  zgen load sorin-ionescu/prezto modules/directory
  zgen load sorin-ionescu/prezto modules/spectrum
  zgen load sorin-ionescu/prezto modules/utility
  zgen load sorin-ionescu/prezto modules/completion
  zgen load sorin-ionescu/prezto modules/prompt

  # Tell prezto we have loaded the default plugins
  # This needs to be right after the default plugins are loaded
  zgen load brandon-fryslie/rad-shell zgen-default-module-fix

  # Extra plugins
  zgen load sorin-ionescu/prezto modules/git
  zgen load sorin-ionescu/prezto modules/fasd
  zgen load sorin-ionescu/prezto modules/history-substring-search

  # 3rd Party plugins
  zgen load lukechilds/zsh-nvm
  zgen load robbyrussell/oh-my-zsh plugins/docker
  zgen load zsh-users/zaw
  zgen load zsh-users/zsh-autosuggestions
  zgen load zsh-users/zsh-completions
  zgen load zsh-users/zsh-syntax-highlighting

  zgen load brandon-fryslie/rad-shell git
  zgen load brandon-fryslie/rad-shell shell-customize
  zgen load brandon-fryslie/rad-shell shell-tools
  zgen load brandon-fryslie/rad-shell zaw

  # Theme
  zgen load brandon-fryslie/git-taculous-zsh-theme git-taculous

  zgen save
fi