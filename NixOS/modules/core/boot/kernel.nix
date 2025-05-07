{
  pkgs,
  hostname,
  config,
  lib,
  ...
}:
{
  boot = {
    initrd.verbose = false;
    consoleLogLevel = 1;
    kernelParams = [
      "split_lock_detect=off"
      "quiet"
    ];
    # kernelParams = [ ];
    extraModulePackages =
      with config.boot.kernelPackages;
      (lib.lists.optionals (hostname == "NixSlayer") [
        xpadneo
        usbip
      ]);
    kernelPackages =
      if (hostname == "Tanker") then
        pkgs.linuxPackages_jovian
      else if (hostname == "jd") then
        pkgs.linuxPackages_hardened
      else
        pkgs.linuxPackages;
    supportedFilesystems = [
      "ntfs"
      "ext4"
      "btrfs"
      "zfs"
    ];
    kernelModules = [
      "udev"
    ];
  };
  hardware.uinput.enable = true;
}
