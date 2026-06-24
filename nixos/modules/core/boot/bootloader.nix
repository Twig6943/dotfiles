{ inputs, config, ... }:
let
  resolution =
    if (config.networking.hostName == "NixSlayer") then
      "1920x1080"
    else
      "1920x1080";
in
{
  boot = {
    loader = {
      grub = {
        enable = true;
        efiSupport = true;
        useOSProber = true;
        devices = [ "/dev/vda" ];
        gfxmodeEfi = "${resolution}";
      };
      systemd-boot.enable = false;
      efi = {
        canTouchEfiVariables = false;
      };
    };
  };
}
