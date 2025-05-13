## Directory structure

```
├──modules/core/gui/steam.nix    (gamescope workaround)
├──modules/home-manager/gui/flameshot.nix      (flameshot wayland fix)
├──modules/home-manager/gui/vesktop.nix        (vesktop override)
├──modules/home-manager/packages/packages.nix   (packages module)
└──modules/home-manager/packages/pkgcustom/     (pkgcustom)
```

## Plans

- [ ] Placeholder

# [IMPORTANT NOTES ❗](https://github.com/Twig6943/dotfiles/tree/main/Notes)

# Fixes 🔨

### Screenshare fix

```
systemctl --user restart xdg-desktop-portal
```

### Sudo password messing up fix
```
faillock --reset
```

<img src="https://i.kym-cdn.com/entries/icons/original/000/053/420/Bombardiro_crocodilo_cover.jpg" width="400"/>
