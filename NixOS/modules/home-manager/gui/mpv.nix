{ pkgs, ... }:
{
  programs.mpv = {
    enable = true;
    package = pkgs.mpv;
    scripts = with pkgs.mpvScripts; []
    scriptOpts = {
      webtorrent = {
        path = "/tmp";
      };
    };
  };
  home.packages = with pkgs; [ open-in-mpv ];
}
