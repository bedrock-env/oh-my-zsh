#!/bin/sh
#
# Oh-My-ZSH
#
# Installs Oh-My-ZSH

# Check for Oh-My-ZSH
if [ ! -d "$HOME/.oh-my-zsh" ];
then
  set -e

  if [ ! -n "$OMZSH" ]; then
    OMZSH=~/.oh-my-zsh
  fi

  echo "\033[0;34mCloning Oh My Zsh...\033[0m"
  hash git >/dev/null 2>&1 && env git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git $OMZSH || {
    echo "git not installed"
    exit
  }

  if [ "$SHELL" != "$(which zsh)" ]; then
      echo "\033[0;34mTime to change your default shell to zsh!\033[0m"
      chsh -s `which zsh`
  fi
fi

exit 0
