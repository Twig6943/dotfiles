{ pkgs, lib, ... }:
{
  programs = {
    obs-studio = {
      enable = true;
      plugins = [];
    };
  };
  xdg.desktopEntries = {
    "com.obsproject.Studio" = lib.mkForce {
      name = "OBS Studio";
      type = "Application";
      icon = "com.obsproject.Studio";
      terminal = false;
      exec = "obs --startreplaybuffer";
    };
  };
}
