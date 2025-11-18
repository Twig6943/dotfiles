# This file is here just for reference.

# Default prefix path

```
/mnt/09403f3c-3c66-47f2-a0b4-5b5fbae04d23/home/twig/Games/DefaultPrefix
```

# Default wrapper (AppImage)

```sh
firejail --noprofile --net=none env PROTONPATH=~/.var/app/com.heroicgameslauncher.hgl/config/heroic/tools/proton/GE-Proton-latest/ env PROTON_ENABLE_WAYLAND=1 env WINEPREFIX=/mnt/09403f3c-3c66-47f2-a0b4-5b5fbae04d23/home/twig/Games/DefaultPrefix
```

# Default wrapper (flatpak)

```sh
flatpak-spawn --no-network --env=PROTONPATH=~/.var/app/com.heroicgameslauncher.hgl/config/heroic/tools/proton/GE-Proton-latest/ --env=PROTON_ENABLE_WAYLAND=1 --env=WINEPREFIX=/mnt/09403f3c-3c66-47f2-a0b4-5b5fbae04d23/home/twig/Games/DefaultPrefix
```
