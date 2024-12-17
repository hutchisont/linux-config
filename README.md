git repo to store some linux configuration files (e.g. fish/nvim etc)

When setting up a new computer remember to enable the sysrq key. Its not enabled by default as it is considered a possible security risk but as it requires physical access to the keyboard I'm not worried about it and would rather have it enabled.

[this explains it](https://forum.endeavouros.com/t/tip-enable-magic-sysrq-key-reisub/7576)

In case the above link stops working, yanked from the endeavouros forums (thank you Kresimir)

Run this command in the terminal:

```
echo 'kernel.sysrq=1' | sudo tee /etc/sysctl.d/99-reisub.conf 
```

This will create the file `/etc/sysctl.d/99-reisub.conf`, containing the single line `kernel.sysrq=1`  

Reboot for the change to take place.

If you want to disable this functionality, just remove the file.

### Hyprland

Hyprland can be difficult to get everything working as its not a full DE.

Lorenzo's articles on hyprland, really useful

All of them should be here: https://www.lorenzobettini.it/tag/hyprland/

Ones I found especially useful:  

* https://www.lorenzobettini.it/2024/08/better-kde-theming-and-styling-in-hyprland/  
* https://www.lorenzobettini.it/2024/05/fixing-the-empty-open-with-in-dolphin-in-hyprland/
