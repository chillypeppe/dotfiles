# dotfiles

### Preview

![preview](https://i.ibb.co/Pzx7Fs4/image-2021-04-16-20-12-44.jpg)

### Installation

Needed fonts for polybar and i3:
- Iosevka Nerd
- Icomoon Feather
- Material Design Icons

You can find these in the fonts directory, if you're using arch you can simply move them to `~/.local/share/fonts`.

Needed (and recommended) monospace font for kitty:
- [JetBrains Mono](https://www.jetbrains.com/lp/mono/)

Copy the configuration files in `~/.config/`.

Install nitrogen and set the wallpaper for the first time (`nitrogen /path/to/image/directory/`), the i3 config will restore the same estore the chosen wallpaper during subsequent sessions.

Install picom, it's a compositor and it works well. Move the config from `config/picom.conf` to `/etc/xdg/picom.conf`.

Install [i3lock-fancy](https://github.com/meskarune/i3lock-fancy) for a nice screen lock. If you want to use a different one replace it in `i3/config` and in `polybar/<bar-name>/scripts/powermenu.sh`

I use [starship prompt](https://starship.rs/) with fish, it looks better than the default one. My configuration is inspired by p10k for zsh. <br>
For starship just move `config/starship.toml` to your `~/.config/`

### Other notes
- Use [siduck's verion of onedark](https://github.com/siduck76/dotfiles/tree/master/gtk/siduck-onedark) for the gtk theme (just copy siduck-onedark to `~/.themes`)
- Change values in the network module of polybar (my network interface is called enp0s31f6, check yours with `ip a`). You may want to use other modules to show battery percentage etc.
- I use a spotify i3 module, you may want to remove it or replace it with an mpd module.
- I wasn't exactly thinking about the most common scenario when adapting these configs to my case, so you may find something here and there which is not working for you.
