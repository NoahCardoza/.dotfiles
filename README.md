# .dotfiles

## Prerequisite

1. [Nix](https://nixos.org/download/)

## Sync

```sh
./setup.sh
```

## Structure

### Mirrors

The folders in this folder are mapped directly into the `$HOME` directory using the `--no-folding` flag.

#### Example

This structure within the .dotfiles repository:

```
~/.dotfiles/mirrors
├── .config
│   └── nix
│       └── nix.conf
└── .ssh
    └── config
```

Will produce this mapping:

```
~
├── .config
│   ├── nix
│   │   └── nix.conf -> ../../.dotfiles/mirrors/.config/nix/nix.conf
└── .ssh
    └── config -> ../.dotfiles/mirrors/.ssh/config
```


### Packages

The folders within this directory are only used for logically grouping the
configurations. The contents of each package is linked into the $HOME directory.

#### Example

This structure within the .dotfiles repository:

```
~/.dotfiles/packages
├── editorconfig
│   └── .editorconfig
├── git
│   ├── .gitconfig
│   └── .gitignore_global
└── zsh
    └── .zshrc
```

Will produce this mapping:

```
~
├── .editorconfig -> .dotfiles/packages/editorconfig/.editorconfig
├── .gitconfig -> .dotfiles/packages/git/.gitconfig
├── .gitignore_global -> .dotfiles/packages/git/.gitignore_global
└── .zshrc -> .dotfiles/packages/zsh/.zshrc
```


## Inspiration

- https://github.com/zzh8829/dotfiles
- https://github.com/omerxx/dotfiles