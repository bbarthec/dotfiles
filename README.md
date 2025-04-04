<h1 align="center">
  macOS dotfiles
  <br/>
  <br/>
  <sup>
  <sup>
    powered by
    <a href="https://www.chezmoi.io/">chezmoi</a>
  </sub>
  </sub>
</h1>

React Native environment configuration for macOS used to configure a fresh macOS device. All managed by [chezmoi](https://github.com/twpayne/chezmoi).


## Repository goals ⚽️

- [x] use defaults as much as possible and describe any tweak
- [x] machine setup as a code
- [x] seamless one-command machine setup
- [x] React Native friendly environment
- [x] reflecting all the software & configurations I'm using on a daily basis

## Installation & how to use

With a new macOS machine:
1. run the computer and reach the desktop stage (provide all info needed - keyboard, timezone, user (alongside with password), network connection info)
2. open `terminal` app
3. run the command [officially recommended in the chezmoi docs](https://www.chezmoi.io/):
    ```bash
    sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply bbarthec
    ```
4. you'll be prompted by `xcode-select` that `no developer tools were found, requesting install`
   1. proceed accordingly - it will install basic macOS dev tools like `git`
5. re-run the above command

## TODOs

- [ ] during first installation you'll be given an error that `brew` cannot been found. You need to run `exec -l $SHELL` to re-initialize shell and load updated `PATH` env variable. Then re-run the chezmoi script and `brew` will be found correctly.
- [ ] when installing `Microsoft` apps you'll be prompted about the password
- [ ] when installing `Microsoft` apps there'll be `Microsoft AutoUpdate` modal. Deal with it somehow.
- [ ] need to login to Apple account when installing App Store apps
- [ ] execute `sudo xcodebuild -license accept`
- [ ] find a way to port over `EasyRes` app to the new machines as it's no longer available
- [ ] for android tooling follow the [React Native guide](https://reactnative.dev/docs/set-up-your-environment?platform=android)

## INSPIRATIONS

- [@twoayne/dotfiles](https://github.com/twpayne/dotfiles) - starting point for writing my own dotfiles repo
- [@renemarc/dotfiles](https://github.com/renemarc/dotfiles) - solid set of cross-system dotfiles
- [@g6ai/dotfiles](https://github.com/g6ai/dotfiles)
- [@benmezger/dotfiles](https://github.com/benmezger/dotfiles) - `.zsh/` inspiration

# TODOs

- Date & Time
  - [ ] set timezone
- Trackpad:
  - [ ] tracking speed -> faster
  - [ ] enable silent clicking
- Keyboard:
  - [ ] key repeat -> fast
  - [ ] delay until repeat -> short
- Visual Studio Code:
  - [ ] login
  - [ ] sync settings:
    - extensions
    - preferences
- command line:
  - [ ] install oh-my-zsh
    - [ ] select plugins
      - [ ] git
- System:
  - [ ] change Terminator to iTerm2
    - [ ] enable status bar - CPU, working dir, git branch, command
      - [ ] position status bar to the bottom
  - [ ] change Safari to Microsoft Edge
  - [ ] adjust status bar
    - add volume icon
- Dock:
  - [ ] move to the left
  - [ ] adjust size
        Peripherals:
  - [ ] pair Sony headphones
  - [ ] install DellDisplayManager
        Other:
  - [ ] clone recent repositories
  - [ ] sudo xcodebuild -license accept
  - [ ] configure Rectangle
    - give system permissions
    - assign shortcuts
  - [ ] Install Android Studio as command line program
  - [ ] Dell Display Manager
  - [ ] Configure Android Studio
  - [ ] `sudo ln -sfn /opt/homebrew/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk`
  - [ ] Add `DDM` to the `Accessibility` settings
  - [ ] Install `Android Studio` as command line program - see `~/bin/android-studio`
  - [ ] install `git-lfs` by using `git lfs install` command (use `homebrew reinstall git-lfs` to see instructions)
  - [ ] Android Studio increase `IDE max heap size`
  - install raycast
    - replace spotlight with it
    - configure it
  - sign in to Android Studio
  - configure CMake for Android Studio - CMake 3.18+
  - add alt+arrow to jump over works in iterm2
  - configure DellDisplayManager - add it to Privacy setting
  - install `Accelerate for Safari`
  - copy `git logpretty`
  - unify key shortcuts across IDE's
    - Android Studio: plugin mirroring VSCode shortcuts
  - `git config --global core.editor "code --wait"`
  - `git config pull.rebase true`
  - `iTerm` infinite scroll
  - make node available for Xcode:
    - `sudo mkdir /usr/local/bin`
    - `ln -s $(which node) /usr/local/bin/node`
  - properly add `rvm` to scripts to be able to pull `bundle` commands
    - zerodown needs `ruby@2.7.5`
  - install `rbenv`
  - configure Raycast

Login:

- [ ] Spotify
- [ ] Microsoft Edge
- [ ] Harvest
- [ ] Visual Studio Code
      Apps:
- 1Password
- Accelerate (extension for Safari)
- Adobe Bridge
- Amphetamine
- DaVinci Resolve
- DDM > DellDisplayManager
- Discord
- Fig
- Figma
- Flow
- MenuMeters
- OmniDiskSweeper
- Raycast
- VLC
- Wormhole
- Vysor
- Lets' View
- Amphetamine
- wireshark - downloaded from website and installed manually
