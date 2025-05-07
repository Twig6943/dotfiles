{ lib, hostname, ... }:
{
  imports = [
    ./dconf.nix
    ./env-vars.nix
    ./nix.nix
    ./nixpkgs.nix
    ./polkit.nix
    ./xdg.nix
    ./security.nix
    ./virtualization.nix
    ./locales.nix
    ./users.nix
    # ./byedpi
  ]
}
