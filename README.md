# these are my dotfiles

setup  
install  
```
stow bspwm sxhkd kitty neovim polybar python uv vlc bashtop zsh curl wget exa bat rofi tree-sitter pulseaudio pulseaudio-bluetooth bluez bluez-utils blueman ripgrep noto-fonts-emoji brightnessctl zen-browser-bin flameshot xdg-desktop-portal xdg-desktop-portal-gtk
```
enable units
```
sudo systemctl enable --now bluetooth.service
```
symlink dotfiles  
```
./install.sh
```
change login shell  
```
chsh -s $(command -v zsh)
```
install oh-my-zsh  
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
install nerd font(s)  
[nerd fonts](https://www.nerdfonts.com/font-downloads)
```
mkdir -p ~/.local/share/fonts ~/Downloads/fonts
curl -OL --output-dir ~/Downloads/fonts https://github.com/ryanoasis/nerd-fonts/releases/latest/download/IBMPlexMono.tar.xz
curl -OL --output-dir ~/Downloads/fonts https://github.com/ryanoasis/nerd-fonts/releases/latest/download/SpaceMono.zip
tar -xf ~/Downloads/*.tar.xz -C ~/.local/share/fonts
unzip ~/Downloads/fonts/*.zip -d ~/.local/share/fonts
fc-cache -fv
```
