#!/bin/bash

source ./utils.sh

# zoxide
if ! grep -q "zoxide init bash" ~/.bashrc; then
    echo 'eval "$(zoxide init bash)"' >> ~/.bashrc
fi

# fzf
if ! grep -q "key-bindings.bash" ~/.bashrc; then
    echo 'source /usr/share/fzf/key-bindings.bash' >> ~/.bashrc
    echo 'source /usr/share/fzf/completion.bash' >> ~/.bashrc
fi

# starship
if ! grep -q "starship init bash" ~/.bashrc; then
    echo 'eval "$(starship init bash)"' >> ~/.bashrc
fi
