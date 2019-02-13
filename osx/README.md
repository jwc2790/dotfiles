# OSX Mojave Dotfiles

## Getting Started

```
curl --silent https://raw.githubusercontent.com/jwc2790/dotfiles/master/osx/setup.sh | bash
```

#### Manual Tasks:
  - Login to `1password`
  - sign into chrome to sync extensions / plugins
  - Set Chrome as default browser
  - Certificate for 
      - Alfred
      - SketchApp
  - logout
      - log back in 
      - give apps permissions they need
      - log into docker
- System Preferences --> Keyboard --> Spotlight - turn off keyboard shortcut so alfred can use it
- update hot key for alfred
- `open src/alfred/workflows/github.alfredworkflow`
- `open src/alfred/workflows/aws.alfredworkflow`




## Features

| Shell             | Bash       |
|-------------------|------------|
| Installation Time | 30 minutes |
| Package Manager   | HomeBrew   |
| Window Manager    | Specticle  |
| Spotlight Search  | Alfred 3   |

## How to Test on an existing laptop

1. create a new user account
2. open terminal
3. Run: `curl --silent https://raw.githubusercontent.com/jwc2790/dotfiles/master/osx/setup.sh | bash`
4. enter sudo credentials for that user

## Note

- right now it clones via https rather than ssh. I'd eventually like to get it working via ssh, but need to generate ssh keys. 

## Credits

- https://github.com/Sajjadhosn/dotfiles

# TODO:
- Ssh config
- item2
- another shell?
- aws credentials in `~/.aws`

# Notes:

- vim plugins might require linters/packages to be globally installed
  - estlint
  - pylint