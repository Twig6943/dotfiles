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

  home.packages =
    with pkgs;
    if (hostname == "NixSlayer") then
      [
        # Define packages that derive from inputs

        inputs.nh.packages.${pkgs.system}.default
        # inputs.nixpkgs-stable.legacyPackages.${pkgs.system}.mysql-workbench
        inputs.nixpkgs-stable.legacyPackages.${pkgs.system}.gimp-with-plugins
        # inputs.nixpkgs-stable.legacyPackages.${pkgs.system}.itch
        inputs.nixpkgs-stable.legacyPackages.${pkgs.system}.handbrake
        inputs.nixpkgs-stable.legacyPackages.${pkgs.system}.valent
        # inputs.nix-alien.packages.${pkgs.system}.nix-alien
        inputs.anyrun.packages.${pkgs.system}.stdin
        inputs.nixpkgs-stable.legacyPackages.${pkgs.system}.bottles
        # inputs.nixpkgs-stable.legacyPackages.${pkgs.system}.nwg-dock-hyprland
        # inputs.hyprswitch.packages.${pkgs.system}.hyprswitch
        inputs.quickshell.packages.${pkgs.system}.default
        inputs.nix-gaming.packages.${pkgs.system}.viper
        inputs.nix-gaming.packages.${pkgs.system}.mo2installer

        # Over
        wget
        wlr-randr
        thefuck
        htop
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
        #mate.mate-polkit
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
        kdePackages.kalk #Calculator
        kdePackages.spectacle
        bottom
        pulseaudioFull
        aria
        jp2a
        deskreen
        nixpkgs-fmt
        p7zip
        wl-clipboard
        grim
        mangohud
        # resources
        # clipboard-jh
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

        # Custom packages
        # (callPackage ./pkgcustom/roblox-fd {})
      ];
      else
      []

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
      "io.github.sigmasd.stimulator"
      "org.vinegarhq.Sober"
      "com.modrinth.ModrinthApp"
      "net.shadps4.shadPS4"
      "org.kde.kdenlive"
      "com.google.AndroidStudio"
      "io.github.everestapi.Olympus"
      "com.github.Rosalie241.RMG"
      "com.github.tchx84.Flatseal"
      "com.steamgriddb.SGDBoop"
      "io.mrarm.mcpelauncher"
      "camp.nook.nookdesktop"
      "com.fightcade.Fightcade"
      "io.itch.itch"
      "io.github.lime3ds.Lime3DS"
      "io.github.Soundux"
      "gg.guilded.Guilded"
      "net.audiorelay.AudioRelay"
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
