# Dotfiles

> Joe Cuffney's Dotfiles

## OSX Mojave

```
curl --silent https://raw.githubusercontent.com/jwc2790/dotfiles/master/osx/setup.sh | bash
```

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
- should be able to be run multiple times so that updates can be easily propogated to multiple machines

### OS Specific Requirements

Shell: Bash (can look into improving this with time)
  - look into others, zsh, oh my fish

### Other Requriements

- user-data file for ec2, digital ocean, etc.