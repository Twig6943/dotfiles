{ hostname, ... }:
{
  imports =
    if (hostname == "NixSlayer") then
      [
        ./gui
        ./other
        ./packages
        ./services
        ./tui

      ]
    else
      [ ];
  home.stateVersion = "23.05";
  programs.home-manager.enable = true;
}
