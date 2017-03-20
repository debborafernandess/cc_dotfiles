#!/bin/sh

if [ ! -d "$HOME/.cc_dotfiles" ]
then
  echo "Installing Dotfiles"
  echo "We'll install:"
  echo "  - tmux"
  echo "  - silver searcher"
  echo "  - zsh"
  echo "  - vim (vim-gnome | macvim)"
  echo "  - google-chrome"
  echo "  - iterm2 (mac)"
  echo "  - atom"

  git clone --depth=10 https://github.com/debborafernandess/cc_dotfiles.git "$HOME/.cc_dotfiles"
  cd "$HOME/.cc_dotfiles"
  rake install
else
  echo "You already have Dotfiles installed."
fi
