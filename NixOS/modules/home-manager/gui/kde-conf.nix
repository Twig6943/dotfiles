{
  inputs,
  pkgs,
  lib,
  config,
  osConfig,
  ...
}:
{
  imports = [ inputs.plasma-manager.homeManagerModules.plasma-manager ];
  programs.plasma = {
    enable = true;
    powerdevil = {
      battery = {
        dimDisplay = {
          enable = false;
        };
        displayBrightness = 60;
      };
      AC = {
        dimDisplay = {
          enable = true;
          idleTimeout = 4000;
        };
        powerProfile =
          if (osConfig.networking.hostName == "NixSlayer") then
            "performance"
          else
            "balanced";
      };
    };
    kwin = {
      nightLight = {
        enable = true;
        mode = "times";
        temperature = {
          day = 5500;
          night = 5000;
        };
        time = {
          morning = "06:30";
          evening = "18:00";
        };
      };
      effects = {
        windowOpenClose.animation = "off";
        desktopSwitching.animation = "off";
        minimization.animation = "off";
        shakeCursor.enable = true;
      };
    };
    workspace = {
      theme = "default";
      lookAndFeel = "Catppuccin-Frappe-Sky";
      colorScheme = "CatppuccinFrappeBlue";
      # wallpaper = ../../../assets/wallpapers/strawHats.png;
      wallpaperBackground = {
        blur = true;
      };
      wallpaperFillMode = "tile";
      cursor = {
        theme = "${config.home.pointerCursor.name}";
        size = config.home.pointerCursor.size;
      };
      iconTheme = "${config.gtk.iconTheme.name}";
    };
    kscreenlocker = {
      appearance = {
        wallpaper = ../../../assets/wallpapers/idolGoro.jpg;
      };
    };
    fonts = {
      general = {
        family = "${config.gtk.font.name}";
        pointSize = config.gtk.font.size;
      };
    };
    input = {
      keyboard = {
        numlockOnStartup = "on";
      };
    };
    spectacle = {
      shortcuts = {
        captureRectangularRegion = "Print";
        captureCurrentMonitor = "Ctrl+Print";
        captureActiveWindow = "Shift+Print";
        recordRegion = "F8";
        recordWindow = "Shift+F8";
      };
    };
    # startup = {
    #   desktopScript = {
    #     "hey-listen" = {
    #       postCommands = "
    #
    #       ";
    #     };
    #   };
    # };
  };
  # Stupid fucking force arguments.
  # xdg.configFile."kdeglobals".text.force = true;
  # xdg.configFile."kcminputrc".text.force = true;
  # xdg.configFile."kwinrc".text.force = true;
  # xdg.configFile."user-dirs.dirs".text.force = true;
  # xdg.configFile."user-dirs.locale".text.force = true;
  # xdg.configFile."gtkrc-2.0".text.force = true;
  # xdg.configFile."gtkrc".text.force = true;
  # xdg.configFile."Trolltech.conf".text.force = true;

  #
#   xdg.configFile."kdeglobals" = {
#     text =
#     if (osConfig.networking.hostName == "NixSlayer") then
#     ''
#       [ColorEffects:Disabled]
#       ChangeSelectionColor=
#       Color=48, 52, 70
#       ColorAmount=0.30000000000000004
#       ColorEffect=2
#       ContrastAmount=0.1
#       ContrastEffect=0
#       Enable=
#       IntensityAmount=-1
#       IntensityEffect=0
# 
#       [ColorEffects:Inactive]
#       ChangeSelectionColor=true
#       Color=48, 52, 70
#       ColorAmount=0.5
#       ColorEffect=3
#       ContrastAmount=0
#       ContrastEffect=0
#       Enable=true
#       IntensityAmount=0
#       IntensityEffect=0
# 
#       [Colors:Button]
#       BackgroundAlternate=153,209,219
#       BackgroundNormal=65, 69, 89
#       DecorationFocus=153,209,219
#       DecorationHover=65, 69, 89
#       ForegroundActive=239, 159, 118
#       ForegroundInactive=165, 173, 206
#       ForegroundLink=153,209,219
#       ForegroundNegative=231, 130, 132
#       ForegroundNeutral=229, 200, 144
#       ForegroundNormal=198, 208, 245
#       ForegroundPositive=166, 209, 137
#       ForegroundVisited=202, 158, 230
# 
#       [Colors:Complementary]
#       BackgroundAlternate=35, 38, 52
#       BackgroundNormal=41, 44, 60
#       DecorationFocus=153,209,219
#       DecorationHover=65, 69, 89
#       ForegroundActive=239, 159, 118
#       ForegroundInactive=165, 173, 206
#       ForegroundLink=153,209,219
#       ForegroundNegative=231, 130, 132
#       ForegroundNeutral=229, 200, 144
#       ForegroundNormal=198, 208, 245
#       ForegroundPositive=166, 209, 137
#       ForegroundVisited=202, 158, 230
# 
#       [Colors:Header]
#       BackgroundAlternate=35, 38, 52
#       BackgroundNormal=41, 44, 60
#       DecorationFocus=153,209,219
#       DecorationHover=65, 69, 89
#       ForegroundActive=239, 159, 118
#       ForegroundInactive=165, 173, 206
#       ForegroundLink=153,209,219
#       ForegroundNegative=231, 130, 132
#       ForegroundNeutral=229, 200, 144
#       ForegroundNormal=198, 208, 245
#       ForegroundPositive=166, 209, 137
#       ForegroundVisited=202, 158, 230
# 
#       [Colors:Selection]
#       BackgroundAlternate=153,209,219
#       BackgroundNormal=153,209,219
#       DecorationFocus=153,209,219
#       DecorationHover=65, 69, 89
#       ForegroundActive=239, 159, 118
#       ForegroundInactive=41, 44, 60
#       ForegroundLink=153,209,219
#       ForegroundNegative=231, 130, 132
#       ForegroundNeutral=229, 200, 144
#       ForegroundNormal=35, 38, 52
#       ForegroundPositive=166, 209, 137
#       ForegroundVisited=202, 158, 230
# 
#       [Colors:Tooltip]
#       BackgroundAlternate=27,25,35
#       BackgroundNormal=48, 52, 70
#       DecorationFocus=153,209,219
#       DecorationHover=65, 69, 89
#       ForegroundActive=239, 159, 118
#       ForegroundInactive=165, 173, 206
#       ForegroundLink=153,209,219
#       ForegroundNegative=231, 130, 132
#       ForegroundNeutral=229, 200, 144
#       ForegroundNormal=198, 208, 245
#       ForegroundPositive=166, 209, 137
#       ForegroundVisited=202, 158, 230
# 
#       [Colors:View]
#       BackgroundAlternate=41, 44, 60
#       BackgroundNormal=48, 52, 70
#       DecorationFocus=153,209,219
#       DecorationHover=65, 69, 89
#       ForegroundActive=239, 159, 118
#       ForegroundInactive=165, 173, 206
#       ForegroundLink=153,209,219
#       ForegroundNegative=231, 130, 132
#       ForegroundNeutral=229, 200, 144
#       ForegroundNormal=198, 208, 245
#       ForegroundPositive=166, 209, 137
#       ForegroundVisited=202, 158, 230
# 
#       [Colors:Window]
#       BackgroundAlternate=35, 38, 52
#       BackgroundNormal=41, 44, 60
#       DecorationFocus=153,209,219
#       DecorationHover=65, 69, 89
#       ForegroundActive=239, 159, 118
#       ForegroundInactive=165, 173, 206
#       ForegroundLink=153,209,219
#       ForegroundNegative=231, 130, 132
#       ForegroundNeutral=229, 200, 144
#       ForegroundNormal=198, 208, 245
#       ForegroundPositive=166, 209, 137
#       ForegroundVisited=202, 158, 230
# 
#       [General]
#       ColorSchemeHash=f13a5f93a8d2186748a87eaf56ec9fcef24073d5
#       font=Iosevka Nerd Font,14,-1,5,400,0,0,0,0,0,0,0,0,0,0,1
# 
#       [Icons]
#       Theme=Papirus-Dark
# 
#       [KDE]
#       LookAndFeelPackage=Catppuccin-Frappe-Sky
# 
#       [WM]
#       activeBackground=48,52,70
#       activeBlend=198,208,245
#       activeForeground=198,208,245
#       inactiveBackground=35,38,52
#       inactiveBlend=165,173,206
#       inactiveForeground=165,173,206
#     ''
#     else
#     null;
#     force = true;
#   };
#   xdg.configFile."kcminputrc" = {
#     text =
#       if (osConfig.networking.hostName == "NixSlayer") then
#        ''
#       [Keyboard]
#       NumLock=0
# 
#       [Mouse]
#       cursorSize=24
#       cursorTheme=catppuccin-frappe-dark-cursors
#     ''
#     else
#     null;
#     force = true;
#   };
  # here are the display settings. I hate that there aren't options for this. plasma-manager is half baked. Well, okay. Maybe not half baked but probably 70% of the way there. Also, I left this note early before I do the configuration.
#   xdg.configFile."kwinrc" = {
#     text =
#       if (osConfig.networking.hostName == "NixSlayer") then
#         ''
#           [Desktops]
#           Id_1=c511f381-96f0-4508-93be-d15d732001cb
#           Number=1
#           Rows=1
# 
#           [NightColor]
#           Active=true
#           DayTemperature=5500
#           EveningBeginFixed=1800
#           Mode=Times
#           MorningBeginFixed=0630
#           NightTemperature=5000
# 
#           [Plugins]
#           fadeEnabled=false
#           fadedesktopEnabled=false
#           glideEnabled=false
#           magiclampEnabled=false
#           scaleEnabled=false
#           shakecursorEnabled=true
#           slideEnabled=false
#           squashEnabled=false
# 
#           [Tiling]
#           padding=4
# 
#           [Tiling][74a7097a-326d-5707-b685-fbfdc2c45852]
#           tiles={"layoutDirection":"horizontal","tiles":[{"width":0.25},{"width":0.5},{"width":0.25}]}
# 
#           [Xwayland]
#           Scale=1.25
#         ''
#       else
#         null;
#     force = true;
#   };
  xdg.configFile."user-dirs.dirs" = {
    text = ''
      # This file is written by xdg-user-dirs-update
      # If you want to change or add directories, just edit the line you're
      # interested in. All local changes will be retained on the next run.
      # Format is XDG_xxx_DIR="$HOME/yyy", where yyy is a shell-escaped
      # homedir-relative path, or XDG_xxx_DIR="/yyy", where /yyy is an
      # absolute path. No other format is supported.
      #
      XDG_DESKTOP_DIR="$HOME/Desktop"
      XDG_DOWNLOAD_DIR="$HOME/Downloads"
      XDG_TEMPLATES_DIR="$HOME/Templates"
      XDG_PUBLICSHARE_DIR="$HOME/Public"
      XDG_DOCUMENTS_DIR="$HOME/Documents"
      XDG_MUSIC_DIR="$HOME/Music"
      XDG_PICTURES_DIR="$HOME/Pictures"
      XDG_VIDEOS_DIR="$HOME/Videos"
    '';
    force = true;
  };
  xdg.configFile."user-dirs.locale" = {
    text = ''
      en_US
    '';
    force = true;
  };
  xdg.configFile."gtkrc-2.0" = {
    text = ''
      gtk-alternative-button-order = 1
    '';
    force = true;
  };
  xdg.configFile."gtkrc" = {
    text = ''
      # Not sure what's supposed to be here. Ok KDE Plasma.
    '';
    force = true;
  };
}
