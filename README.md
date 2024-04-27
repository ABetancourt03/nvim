# My neovim config with lua

## Installation

### First, to remove any other configuration copy and paste these commands

- Linux/MacOS:
```bash
rm -rf ~/.config/nvim
```

```bash
rm -rf ~/.local/share/nvim
```

- Windows Powershell:
```bash
rm -Force ~\AppData\Local\nvim
```

```bash
rm -Force ~\AppData\Local\nvim-data
```

### Once removed any config you have, paste this command to install the new config

- Linux/MacOS:
```bash
git clone https://github.com/ABetancourt03/nvim.git ~/.config/nvim && nvim
```

- Windows Powershell:
```bash
git clone https://github.com/ABetancourt03/nvim.git $ENV:USERPROFILE\AppData\Local\nvim && nvim
```
### This will clone and install the config and all plugins automatically
