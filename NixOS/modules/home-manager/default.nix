{ hostname, ... }:
{
  imports =
    if (hostname == "jd") then
      [
        ./tui/nushell.nix
        ./packages/packages.nix
      ]
    else
      [
        ./gui
        ./other
        ./packages
        ./services
        ./tui
      ]
      else
  home.stateVersion = "23.05";
  programs.home-manager.enable = true;
}
