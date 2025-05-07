{ hostname, ... }:
{
  imports =
    if (hostname == "twig") then
      [
        ./boot
        ./gui
        ./other
        ./packages
        ./services
        ./tui
      ]
    else
      [
      ./boot
      ./gui
      ./other
      ./packages
      ./services
      ./tui];
}
