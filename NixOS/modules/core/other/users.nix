{ pkgs, config, ... }:
let
  userName =
    if (config.networking.hostName == "NixSlayer") then
      "twig"
    else
      "user";
in
{
  # Define a user account. Don't forget to set a password by creating an encrypted file at the relevant location.
  users.users.${userName} = {
    isNormalUser = true;
    description = "${userName}";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = pkgs.zsh;
    ignoreShellProgramCheck = true;
  };
}
