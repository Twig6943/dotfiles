{
  description = "Flake stuff";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.11";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=v0.5.2";
    nh = {
      url = "github:viperML/nh";
      inputs.nixpkgs.follows = "nixpkgs"; # override this repo's nixpkgs snapshot
    };
    catpuccin-cursors = {
      url = "github:catppuccin/cursors";
    };
    plasma-manager = {
      url = "github:nix-community/plasma-manager";
    };
  };
  outputs =
    inputs@{ nixpkgs, ... }:
    {
      nixosConfigurations = {
        NixSlayer = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs =
            let
              username = "twig";
              hostname = "NixSlayer";
            in
            {
              inherit inputs username hostname;
            };
          modules = [
            ./machines/NixSlayer
            ./modules
          ];
        };
      };
    };
}
