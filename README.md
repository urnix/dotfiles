# Dotfiles
This repository is my setup for a new macOS computer.   
It helps me to install quickly all software I need for work and fun.

Feel free to check & alter the list of software to be installed - [Brewfile](Brewfile)

Also don't hesitate to share your feedback about [install.sh](install.sh) - I'm not a big fun of Shell, so my script may suck :D

Use at your own risk!

## Installation
Run next commands in your terminal one by one and follow instructions if any.  
Note: Brew installation will ask you for the root password.   
And it takes 15-30 min, so make sure to grab your favourite tea or coffee meanwhile.
```shell
# Install oh-my-zsh (it restarts shell, so it has to be separate)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Main installation script
zsh ./install.sh
```
## Notes
1. Please carefully read all scripts and comment/uncomment lines in corresponds with your macOS version and CPU architecture!
2. If you need install VirtualBox, then you need to do follow before run: "System Preferences → Security & Privacy → General -> Allow apps downloaded from -> App Store and identified developers". And reboot machine.

## TODO
1. Deleting old snippet from `.zshrc` before add new one.
2. Use last changed dir in `dev` as current dir.
3. Check is Rosetta already installed
4. Check Intel/Apple CPU to decide do we need to install Rosetta only for M1 and where Brew installed `opt/homebrew` or `usr/local`.3. Installing Rosetta only for M1.
5. Setup macFUSE + NTFS 3G