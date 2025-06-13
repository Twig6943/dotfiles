`filesystems` to allow access

`rw` read-wrtie

`ro` read-only

`filesystems=xdg-config/gtk-3.0:ro;xdg-config/gtk-4.0:ro;`

Use `nofilesystem` to block access to certain paths

`nofilesystem=host;`

# Notes;

### Don't change the `GTK_THEME` env var for lutris, it makes winetricks light theme.
