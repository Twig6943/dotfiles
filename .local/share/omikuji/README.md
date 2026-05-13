# This file is here just for reference.

# Default prefix path

```
/mnt/Games/
```

# Default wrapper (flatpak)

```sh
flatpak-spawn --no-network --env=PROTONPATH=/home/twig/.var/app/io.github.reakjra.omikuji/data/omikuji/runners/GE-Proton10-34 --env=PROTON_ADD_CONFIG=wayland --env=WINEPREFIX=/mnt/Games/Games/DefaultPrefix
```

# Default wrapper (AppImage)

```sh
firejail --noprofile --net=none env PROTONPATH=/home/twig/.var/app/io.github.reakjra.omikuji/data/omikuji/runners/GE-Proton10-34 env PROTON_ADD_CONFIG=wayland env WINEPREFIX=/mnt/Games/Games/DefaultPrefix
```
