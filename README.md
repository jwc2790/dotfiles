# Dotfiles

> Joe Cuffney's Dotfiles

## OSX Mojave

```
curl --silent https://raw.githubusercontent.com/jwc2790/dotfiles/master/osx.sh | bash
```

#### Manual Tasks:
  - [] Login to `1password`
  - sign into chrome to sync extensions / plugins

## Goals

- to not require a mouse for development 
- quickly spin up development environment
- be intential about my development environment and free to experiment with new features and roll back quickly

## High Level Requirements

- must be a one liner to invoke on a fresh Mac
- Must Support all operating systems I might use for development
  - OSX Mojave
  - Ubuntu
- must have no dependiencies
- must not require any input other than initial sudo
- must be testable in a contained environment
- must be well documented

### OS Specific Requirements

Shell: Bash (can look into improving this with time)
  - look into others, zsh, oh my fish
