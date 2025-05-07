{ pkgs, lib, ... }:
{
  home.packages = with pkgs; [ signal-desktop ];
  xdg.desktopEntries = {
    "signal-desktop" = lib.mkForce {
      name = "Signal";
      type = "Application";
      icon = "signal-desktop";
      terminal = false;
      exec = "signal-desktop --password-store=basic_text --no-sandbox %U";
    };
  };
}
