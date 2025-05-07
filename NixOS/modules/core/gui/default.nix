{ lib, hostname, ... }:
{
  imports =
    [
      ./opengl.nix
      ./steam.nix
    ]
    ++ (lib.lists.optionals (hostname == "NixSlayer" [
      # ./hyprland.nix
      ./sddm.nix
      ./kde6.nix
    ])
}
