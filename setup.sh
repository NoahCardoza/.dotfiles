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

# the mirrors into the home directory
stow --verbose --target=$HOME --dir=./mirrors .