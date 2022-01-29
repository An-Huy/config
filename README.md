___ ZSH installation and customization ___ 
+sudo pacman -s zsh 
+install oh-my-zsh from https://github.com/ohmyzsh/ohmyzsh 

+ After install oh-my-zsh, next is to install plugins to help enable syntax highlighting and auto suggestions
- git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
- git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

+ Using the powerlevel10k themes, before installation to show up icons clones the repo: 
- git clone https://github.com/ryanoasis/nerd-fonts.git 
- run install.sh 
+ install powerlevel10k
- git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

+ Change the .zshrc file
- ZSH_THEME="powerlevel10k/powerlevel10k"
- plugins=(zsh-syntax-highlighting zsh-autosuggestions)
+ recomplie .zshrc: source .zshrc

+ you can use AUR or using yay
- git clone https://aur.archlinux.org/yay.git 
- makepkg -si 

___ xmonad installation and customization ___
+ installation:
- sudo pacman -S git xorg-server xorg-apps xorg-xinit xorg-xmessage libx11 libxft libxinerama libxrandr libxss pkgconf
- sudo pacman -S xmonad xmonad-contrib xmobar picom nitrogen terminator firefox(if u dont have a broswer)
+ gdm, sddm or others by your choice
- sudo pacman -S gdm
- sudo systemctl enable gdm
+ create .xprofile in your home directory
- cp path-where-you-clone-the-repo/.xprofile ~/.xprofile
+ make .xmonad directory: mkdir ~/.xmonad
- cp ~/path-where-you-clone-the-repo/xmonad.hs ~/.xmonad/xmonad.hs 
- mod key is windows key or you can change 
- open xmonad.hs and find the key binding 
+ xmobar 
- install font to show icons: sudo pacman -S ttf-font-awesome
- cp path-where-you-clone-the-repo/.xmobarrc ~/.xmobarrc
- run xmobar: xmobar &
+ you can use nitrogen to apply wallpaper

___ i3 installation and customization ___
+ installation:
- sudo pacman -S xorg-server xorg-xinit i3-gaps i3status i3lock dmenu terminator firefox(if u dont have a broswer)
- sudo cp /etc/X11/xinit/xinitrc ~/.xinitrc
- cp path-where-you-clone-the-repo/dotfiles/.xinitrc ~/.xinitrc
+ gdm. sddm or others by your choice
- sudo pacman -S gdm
- sudo systemctl enable gdm
- sudo systemctl start gdm
+ Configuration file is generate in .config/i3 
- read the default config file to understand the key binding
+ make i3status directory in .config file: mkdir .config/i3status
- sudo cp /etc/i3status.conf ~/.config/i3status/i3status.conf 
- change user and group: sudo chown huy:huy i3status.conf
- customize your status bar 
+ you can use polybar instead of i3status and i3lock-color for i3lock 
- yay -S polybar
+ install nescessery font for polybar 
- sudo pacman -S xorg-fonts-misc
- yay -S siji-git ttf-unifont
- mkdir .config/polybar
- sudo cp /usr/share/doc/polybar/config ~/.config/polybar
- sudo chown huy:huy .config/polybar/config
or cp from the repo with the launch script: sudo cp ~/path-where-you-clone-the-repo/polybar .config/polybar









