{ config, pkgs, lib, ... }:
{
  home.file.borders = {
    executable = true;
    target = ".config/borders/bordersrc";
    text = ''
      #!/user/bin/env sh
      
        borders style=square width=6.0 hidpi=off active_color=0xea9a97 inactive_color=0x3e8fb0
    '';
  };
}
