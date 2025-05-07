{
  xdg.configFile."vinegar/config.toml".text = ''
    # In case you need some help, here: https://vinegarhq.github.io/Configuration

    [global]
    launcher = "mullvad-exclude gamescope -W 2560 -H 1440 --force-grab-cursor mangohud"

    [splash]
    background = 0x252836
    foreground = 0xC6D0F5

    [player]
    forced_version = "version-70a2467227df4077"

    [player.fflags]
    DFIntTaskSchedulerTargetFps = 640 # set to 640 for better performance
  '';
}
