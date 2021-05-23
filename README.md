# dotfiles

### Preview

![preview](https://i.ibb.co/Pzx7Fs4/image-2021-04-16-20-12-44.jpg)

### Installation

Needed fonts for polybar and i3:
- Iosevka Nerd
- Icomoon Feather
- Material Design Icons

You can find these in the fonts directory. <br>
If you're using arch you can simply move them to `~/.local/share/fonts`.

Needed (and recommended) monospace font for kitty:
- [JetBrains Mono](https://www.jetbrains.com/lp/mono/)

Now copy the configuration files to `~/.config/`.

Install nitrogen and set the wallpaper for the first time (`nitrogen /path/to/image/directory/`), the i3 config will restore the same wallpaper during subsequent sessions.

Install picom, it's a compositor and it works well. You can use my config if you want (pretty much the standard one), just copy the file from `config/picom.conf` to `/etc/xdg/picom.conf` and restart X11.

Install [i3lock-fancy](https://github.com/meskarune/i3lock-fancy) for a nice screen lock.<br>
If you want to use a different one replace it in `i3/config` and in `polybar/<bar-name>/scripts/powermenu.sh`


### Configuration

##### Laptop configuration
My main configuration is meant for a desktop pc, but I also provided my laptop-specific configuration files in the `4laptop` directory.

##### Battery module
If you're using a laptop you may want to insert the battery percentage on polybar. <br>
For doing so you can edit `~/.config/polybar/<bar-name>/config.ini` and insert `battery` where you define the modules' position. <br>

You may also need to specify your battery name and adapter, otherwise it wouldn't work at all.<br>
Edit `~/.config/polybar/<bar-name>/modules.ini` in the module/battery section: <br>
Run the command `ls -1 /sys/class/power_supply/` and replace the values in `battery =` and `adapter =`

##### Touchpad
On a laptop you have to configure manually the touchpad. You can do so creating a file like `/etc/X11/xorg.conf.d/30-touchpad.conf` with the following content:
```
Section "InputClass"
    Identifier "< the name of your device>"
    Driver "libinput"
    MatchIsTouchpad "on"
    Option "Tapping" "on"
    Option "TappingButtonMap" "lrm"
    Option "NaturalScrolling" "true"
    Option "AccelSpeed" "0.1"
EndSection
```
You can check the name of your device with `sudo libinput list-devices`
##### Fish Prompt
I use [starship prompt](https://starship.rs/) with fish, it looks better than the default one. My configuration is inspired by p10k for zsh. <br>
For starship just move `config/starship.toml` to your `~/.config/`

### Other notes
- You can use [siduck's verion of onedark](https://github.com/siduck76/dotfiles/tree/master/gtk/siduck-onedark) for the gtk theme (just copy siduck-onedark to `~/.themes`).
- lxappearance is a nice tool to select themes without editing text files manually.
- Change values in the network module of polybar (my network interface is called enp0s31f6, check yours with `ip a`). You may want to use other modules to show battery percentage etc.
- I use a spotify i3 module, if you don't use spotify you may want to remove it or replace it with a mpd module.
- I wasn't exactly thinking about the most common scenario when adapting these configs to my case, so you may find something here and there which is not working for you.
