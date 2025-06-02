{ pkgs, lib, ... }:
{
  services = {
    displayManager = {
      sddm = {
        enable = true;
        theme = "catppuccin-frappe";
        package = lib.mkForce pkgs.kdePackages.sddm;
      };
    };
    xserver = {
      displayManager = {
        lightdm.enable = false;
      };
    };
  };
  environment.systemPackages = [
    (pkgs.catppuccin-sddm.override {
      flavor = "frappe";
      font = "Iosevka Nerd Font";
      fontSize = "10";
      background = "${../../../assets/wallpapers/NixSlayer.png}";
      loginBackground = true;
    })
  ];
}
