{ config, pkgs, lib, ... }:
{
  home.file.borders = {
    executable = true;
    target = ".config/borders/bordersrc";
    text = ''
      #!/usr/bin/env sh
      
      options=(
          style=round
          width=6.0
          hidpi=off
          active_color=0xffea9a97
          inactive_color=0xff3e8fb0
        )

        borders "''${options[@]}"
    '';
  };
}
