<h1> ZSH installation and customization </h1>

```
sudo pacman -s zsh 
```

- install oh-my-zsh from https://github.com/ohmyzsh/ohmyzsh 
- After install oh-my-zsh, next is to install plugins to help enable syntax highlighting and auto suggestions

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

- Using the powerlevel10k themes, before installation to show up icons clones the repo: 

```
git clone https://github.com/ryanoasis/nerd-fonts.git 
./install.sh 
```

- install powerlevel10k

```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

- Change the .zshrc file

```
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(zsh-syntax-highlighting zsh-autosuggestions)
source .zshrc
```

<h1> xmonad installation and customization </h1>
- installation:

```
sudo pacman -S git xorg-server xorg-apps xorg-xinit xorg-xmessage libx11 libxft libxinerama libxrandr libxss pkgconf
sudo pacman -S xmonad xmonad-contrib xmobar picom nitrogen terminator firefox(if u dont have a broswer)
```

- create .xprofile in your home directory

```
cp path-where-you-clone-the-repo/.xprofile ~/.xprofile
```
-  make .xmonad directory: mkdir ~/.xmonad

```
cp ~/path-where-you-clone-the-repo/xmonad.hs ~/.xmonad/xmonad.hs 
```
- xmobar: install font to show icons: 

```
sudo pacman -S ttf-font-awesome
```
cp path-where-you-clone-the-repo/.xmobarrc ~/.xmobarrc
run xmobar: xmobar &
+ you can use nitrogen to apply wallpaper

<h1> i3 installation and customization </h1>
- installation:

```
sudo pacman -S xorg-server xorg-xinit i3-gaps i3status i3lock dmenu terminator firefox picom nitrogen (if u dont have a broswer)
```

```
- cp path-where-you-clone-the-repo/dotfiles/.xprofile ~/.xprofile 
- sudo cp /etc/X11/xinit/xinitrc ~/.xinitrc
- cp path-where-you-clone-the-repo/dotfiles/.xinitrc ~/.xinitrc
```

- Configuration file is generate in .config/i3: read the default config file to understand the key binding
-  make i3status directory in .config file: 
```
mkdir .config/i3status
```

sudo cp /etc/i3status.conf ~/.config/i3status/i3status.conf 
```    
- change user and group: sudo chown user:user i3status.conf

```
yay -S polybar
```
- install nescessery font for polybar 

```
sudo pacman -S xorg-fonts-misc
yay -S siji-git ttf-unifont
mkdir .config/polybar
sudo cp /usr/share/doc/polybar/config ~/.config/polybar
sudo chown user:user .config/polybar/config 
```

- or cp from the repo with the launch script: sudo cp ~/path-where-you-clone-the-repo/polybar .config/polybar

- you can use rofi instead of dmenu

<h1> betterlockscreen </h1>
- Follow the guide on the https://github.com/betterlockscreen/betterlockscreen.git 

<h1> vim-plug </h1>
- vim: 
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
- neovim: 
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
