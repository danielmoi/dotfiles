# New Machine

## Settings
- Caps lock to Escape
- Key repeat rates
- Mousepad to natural scrolling
- Clean up dock
- Make font size smaller
- Trackpad, turn off force click
- Update Font sizes in Open/Save Dialog Boxes (use XCode and edit .plist)

## Applications
- Chrome
- Moom
- 1Password
- VS Code
- Todoist
- Microsoft suite
- Adobe suite
- iTerm2
  - defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
- Rocket for emojis
- AppCleaner

## Applications Optional
- Sonos
- Slack
-

## Binaries
- Command line tools for Xcode
- Brew
  - install with https://brew.sh/
  - ensures brew is installed in /opt/homebrew and has appropriate permissions for EVERY subsequent program install!!!!
- oh my zsh
- Set up Github SSH
- Neovim = brew install neovim
- dotfiles
  - this file lives there
  - git clone dotfiles
- create symlinks
- PlugInstall + run it!
- Install powerline fonts, Meslo LG M for Powerline
    - git clone https://github.com/powerline/fonts.git --depth=1
    - cd fonts ./install.sh
    - cd.. rm -rf fonts
- Install spaceship theme
    - brew install spaceship
    - Add the line to to ~/.zshrc

- iTerm > Meslo LG M for Powerline


## Other binaries
- https://github.com/sts10/rust-command-line-utilities?tab=readme-ov-file
- ripgrep
- tokei
