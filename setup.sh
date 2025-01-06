#!/usr/bin/env nix-shell
#!nix-shell -i bash -p stow

# install the contents of each package into the home directory
for file in ./packages/*; do
  # if the file is a directory
  if [ -d "$file" ]; then
  echo "Stowing $file"
    # stow the directory
    stow --verbose --target=$HOME --dir=$file .
  fi
done

# install the mirrors into the home directory
stow --verbose --target=$HOME --dir=./mirrors .

# install the config files that need to be placed into application support
# TODO: place these in .config for non-macOS systems
stow --verbose --target="$HOME/Library/Application Support" --dir=./application-support .