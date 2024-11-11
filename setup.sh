#!/bin/bash

if [[ "$(uname -m)" == "arm64" ]]; then
    if ! /usr/bin/pgrep oahd >/dev/null 2>&1; then
        echo "Installing Rosetta..."
        /usr/sbin/softwareupdate --install-rosetta --agree-to-license
    else
        echo "Rosetta is already installed."
    fi
fi

echo "Running strap.sh..."
./strap.sh

if ! command -v asdf >/dev/null 2>&1; then
    echo "Installing ASDF"
    brew install asdf
    echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc
else
    echo "ASDF is already installed."
fi

echo "Installing ASDF plugins and versions..."
./asdf-bootstrap.sh

echo "Installing Homebrew Bundle..."
brew bundle --file=brewfile