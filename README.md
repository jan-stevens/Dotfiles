<div align="center">
    <h1>Dotfiles</h1>
    <blockquote>
        <p>Biogen98's Manjaro dotfiles.</p>
    </blockquote>
</div>

![t](https://flat.badgen.net/badge/platform/Linux)

> ri • cing /ry-sing/
>
> - Making visual improvements and customization to your desktop and/or phone that can simplify your desktop environment but (generally) are completely pointless.

## Some details
+ **OS**: Manjaro 18.1.5
+ **WM**: i3wm
+ **Terminal**: Kitty
+ **File Manager**: nemo / nnn
+ **Launcher**: Rofi
+ **Editor**: nvim / [micro](https://micro-editor.github.io/) / vscode
+ **Browser**: Brave
+ **GTK theme**: Material-Black-Cherry
## Dependencies
### Programs
+ i3-gaps-rounded-git
+ zsh / [oh-my-zsh](https://ohmyz.sh/)
+ [Kitty](https://sw.kovidgoyal.net/kitty/)
+ [Polybar](https://polybar.github.io/)
+ [Rofi](https://github.com/davatorium/rofi)
+ [Spicetify-cli](https://github.com/khanhas/spicetify-cli)
### Fonts
+ **[Jetbrains Mono](https://www.jetbrains.com/lp/mono/#how-to-install)**
+ **[Font Awesome](https://fontawesome.com/)**
+ **Nerd Fonts**
+ **Iosevka**

## Some recommended applications
+ **Terminals**: Kitty / urxvt
+ **File managers**: Nnn / Thunar / Nautilus
+ **Launchers**: Rofi / dmenu / Ulauncher
+ **Browsers**: Brave / Chromium
+ **Editors**: Sublime Text / Micro / Atom / nvim
+ **Music players**: Spotify
+ **email client**: Mailspring
+ **Compositor**: Compton-tryone-git (Enables kawase blur)
+ **Window manager**: i3 gaps rounded
+ **Display manager**: [lightdm-mini-greeter](https://github.com/prikhi/lightdm-mini-greeter) / [mantablockscreen](https://github.com/reorr/mantablockscreen)

## Install
Clone (using `git`) this repo manually into the home directory:

    git clone https://github.com/biogen98/Dotfiles.git ~/.dotfiles

Use the program GNU Stow (https://www.gnu.org/software/stow/) to place the folders in their desired directory. Usage:

    cd ~
    git clone  https://github.com/biogen98/Dotfiles.git
    cd dotfiles
    stow polybar (or i3, rofi, dmenu, etc.)
Alternatively use:

    stow *

## Preview
![Screenshot](https://github.com/biogen98/Dotfiles/blob/master/screenshots/Screenshot_2.png)

**Nvim configuration**| **i3 configuration**
----- | -----
![Screenshot](https://github.com/biogen98/Dotfiles/blob/master/screenshots/Screenshot_1.png) | ![Screenshot](https://github.com/biogen98/Dotfiles/blob/master/screenshots/Screenshot_3.png)

## Feedback
Suggestions/improvements are [welcome](https://github.com/biogen98/Dotfiles/issues)!
