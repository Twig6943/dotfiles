{
  config,
  lib,
  modulesPath,
  ...
}: {
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
  ];

  # Graphics drivers
  services.xserver.videoDrivers = [
    "amdgpu"
  ];

  boot = {
    extraModulePackages = [ ];
    supportedFilesystems = [ "ntfs" "btrfs" "ext4" ];
    kernelModules = [ "kvm-intel" ];
    initrd = {
      availableKernelModules = [
        "vmd"
        "xhci_pci"
        "ahci"
        "nvme"
        "usbhid"
        "usb_storage"
        "sd_mod"
      ];
      kernelModules = [
        "amdgpu"
        "ahci"
        "xhci_pci"
        "virtio_pci"
        "sr_mod"
        "virtio_blk"
      ];
    };
  };

  # Root filesystem
  fileSystems."/" = {
    device = "/dev/disk/by-uuid/762eef50-333e-4295-9d0c-c3f54f8ee84e";
    fsType = "ext4";
  };

  # Swap
  swapDevices = [
    {
      device = "/dev/disk/by-uuid/cea0ecc6-3d41-409e-96a9-d9591440d733";
    }
  ];

  # Networking
  networking.useDHCP = lib.mkDefault true;

  # Host architecture
  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";

  # Microcode updates
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
