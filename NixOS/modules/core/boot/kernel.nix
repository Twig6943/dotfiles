{ pkgs, hostname, config, lib, ... }:

{
  boot = {
    initrd.verbose = false;
    consoleLogLevel = 1;
    kernelParams = [
      "split_lock_detect=off"
      "quiet"
    ];

    extraModulePackages = 
      with config.boot.kernelPackages;
      lib.lists.optionals (hostname == "NixSlayer") [
        xpadneo
        usbip
      ];

    kernelPackages =
      if hostname == "NixSlayer" then
        pkgs.linuxPackages_latest
      else
        pkgs.linuxPackages;

    supportedFilesystems = [
      "ntfs"
      "ext4"
      "btrfs"
    ];
    kernelModules = [
      "udev"
    ];
  };

  hardware.uinput.enable = true;
}
