{ lib, pkgs, ... }:
{
  # It looks lonely here... Maybe one day I'll put something here.
  # Someday.
  xdg.portal = {
    enable = true;
    wlr = lib.mkForce { enable = false; };
    extraPortals = with pkgs; [
      kdePackages.xdg-desktop-portal-kde
      xdg-desktop-portal-gtk
    ];
  };
}
