# My neovim config with LazyVim

## Installation

### First, to remove any other configuration copy and paste these commands

- Linux/MacOS:

```
rm -rf ~/.config/nvim
```

```
rm -rf ~/.local/share/nvim
```

- Windows Powershell:

```
rm -Force ~\AppData\Local\nvim
```

```
rm -Force ~\AppData\Local\nvim-data
```

### Once removed any config you have, paste this command to install the new config

- Linux/MacOS:

```
git clone https://github.com/ABetancourt03/nvim.git ~/.config/nvim && nvim
```

- Windows Powershell:

```
git clone https://github.com/ABetancourt03/nvim.git $ENV:USERPROFILE\AppData\Local\nvim && nvim
```

### This will clone and install the config and all plugins automatically
