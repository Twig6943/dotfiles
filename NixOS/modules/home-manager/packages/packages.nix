{
  pkgs,
  inputs,
  lib,
  hostname,
  ...
}:
{
  # Define your packages here and everything related.
  imports = [ inputs.nix-flatpak.homeManagerModules.nix-flatpak ];

  home.packages = with pkgs;
  if (hostname == "NixSlayer") then
    [

      # Over
      librewolf-bin
      micro
      wget
      wlr-randr
      btop
      killall
      appimage-run
      gamemode
      pavucontrol
      nix-init
      waydroid
      ffmpeg
      vulkan-tools
      fastfetch
      scrcpy
      python3Full
      gnupg
      wlprop
      # mate.mate-polkit;
      distrobox
      unzip
      qgnomeplatform-qt6
      qgnomeplatform
      gparted
      gnome-clocks
      gnome-sound-recorder
      wev
      docker
      speedtest-cli
      gnome-calendar
      wireguard-tools
      android-tools
      gpu-screen-recorder
      nix-update
      firewalld-gui
      wine-staging
      nmap
      ntfs3g
      amdgpu_top
      qt6.qtdeclarative
      kdePackages.ark
      kdePackages.kalk # Calculator
      kdePackages.spectacle
      pulseaudioFull
      aria
      p7zip
      wl-clipboard
      grim
      mangohud
      # resources
      # clipboard-jh;
      # (pkgs.appimageTools.wrapType2 { # or wrapType1
      #   name = "suyu";
      #   src = fetchurl {
      #     url = "https://git.suyu.dev/suyu/suyu/releases/download/v0.0.3/Suyu-Linux_x86_64.AppImage";
      #     hash = "sha256-26sWhTvB6K1i/K3fmwYg5pDIUi+7xs3dz8yVj5q7H0c=";
      #   };
      # })

      # Override Template
      # (pkgs.<package>.overrideAttrs {
      #   src = pkgs.fetchFromGitHub {
      #     owner = "";
      #     repo = "";
      #     rev = "";
      #     sha256 = "";
      #   };
      # })
    ]
  else []
;

  # List of nix packages end here
  services.flatpak = {
    uninstallUnmanaged = false;
    # enable = true; # in /modules/core/packages.nix
    remotes = [
      {
        name = "flathub";
        location = "https://dl.flathub.org/repo/flathub.flatpakrepo";
      }
    ];
    packages = [
      "dev.zed.Zed"
      "org.ghidra_sre.Ghidra"
      "com.spotify.Client"
      "org.strawberrymusicplayer.strawberry"
      "net.lutris.Lutris"
      "org.qbittorrent.qBittorrent"
      "io.mpv.Mpv"
      "org.gnome.Boxes"
      "im.riot.Riot"
      "org.kde.Platform"
      "org.freedesktop.Platform"
      "org.freedesktop.Sdk/x86_64/23.08"
    ];
    update = {
      onActivation = true;
      auto = {
        enable = true;
        onCalendar = "weekly"; # Default value
      };
    };
  };

  # scripts

  # Permitted Insecure Packages
  nixpkgs = {
    config = {
      permittedInsecurePackages = [];
      allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [ "davinci-resolve" ];
      allowUnfree = true;
      allowBroken = true;
    };
  };
}
