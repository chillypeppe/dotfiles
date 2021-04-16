# dotfiles

### Preview

![preview](https://i.ibb.co/Pzx7Fs4/image-2021-04-16-20-12-44.jpg)

### Installation

Needed fonts for polybar and i3:
- Iosevka Nerd
- Icomoon Feather
- Material Design Icons

Needed (and recommended) monospace font for kitty:
- [JetBrains Mono](https://www.jetbrains.com/lp/mono/)

Copy the configuration files in `~/.config/`. 

I use [starship](https://starship.rs/) prompt with fish, it looks better than the default one. My configuration is inspired by p10k for zsh. <br>
For starship just move starship.toml from the config folder to `~/.config/`

### Other notes
- Use [siduck's verion of onedark](https://github.com/siduck76/dotfiles/tree/master/gtk/siduck-onedark) for the gtk theme (just copy siduck-onedark to `~/.themes`)
- Change values in the network module of polybar (my network interface is called enp0s31f6, check yours with `ip a`). You may want to use other modules to show battery percentage etc.
- I use a spotify i3 module, you may want to remove it or replace it with an mpd module.
- I wasn't exactly thinking about the most common scenario when adapting these configs to my case, so you may find something here and there which is not working for you.