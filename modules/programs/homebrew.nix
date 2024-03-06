{ config, pkgs, lib, ... }:

{
  homebrew = {
    enable = true;
    taps = [
      # default
      "homebrew/cask-fonts"
      "homebrew/cask-versions"
      "homebrew/services"

      # custom
      "koekeishiya/formulae"
      "FelixKratz/formulae"
    ];

    brews = [
      "skhd"
      "yabai"
      "sketchybar"
    ];

    casks = [
      # Communication
      "discord"

      # Browser
      "vivaldi"

      # Lancher
      "raycast"
    ];
  };
}
