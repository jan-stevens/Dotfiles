<div align="center">
    <h1>Dotfiles</h1>
    <blockquote>
        <p>my personal dotfiles.</p>
    </blockquote>
</div>

![t](https://flat.badgen.net/badge/platform/Linux)

> ri • cing /ry-sing/
>
> - Making visual improvements and customization to your desktop and/or phone that can simplify your desktop environment but (generally) are completely pointless.

## Some details
+ **OS**: Pop_OS 21.04
+ **WM**: /
+ **Terminal**: Kitty
+ **File Manager**: nautilus
+ **Launcher**: /
+ **Editor**: nvim / [micro](https://micro-editor.github.io/) / vscode
+ **Browser**: chromium
+ **GTK theme**: /
## Dependencies
### Programs
+ i3-gaps-rounded
+ zsh / [oh-my-zsh](https://ohmyz.sh/)
+ [Kitty](https://sw.kovidgoyal.net/kitty/)
+ [Polybar](https://polybar.github.io/)
+ [Rofi](https://github.com/davatorium/rofi)
+ [nvim](https://neovim.io/)

### Fonts
+ **[Jetbrains Mono](https://www.jetbrains.com/lp/mono/#how-to-install)**
+ **Nerd Fonts**

## Some recommended applications
+ **Terminals**: Kitty
+ **File managers**: Nnn / Nemo
+ **Launchers**: Rofi / dmenu
+ **Browsers**: Brave / Chromium
+ **Editors**: Sublime Text / Atom / Nvim
+ **Music players**: Spotify
+ **Compositor**: picom-tryone-git (Enables kawase blur)
+ **Window manager**: i3-gaps-rounded
+ **Lockscreen**: [mantablockscreen](https://github.com/reorr/mantablockscreen)
+ **Display manager**: [lightdm-mini-greeter](https://github.com/prikhi/lightdm-mini-greeter)

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
