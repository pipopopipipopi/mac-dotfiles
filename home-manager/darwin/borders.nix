{ config, pkgs, lib, ... }:
{
  home.file.borders = {
    executable = true;
    target = ".config/borders/bordersrc";
    text = ''
      #!/user/bin/env sh
      
      borders style=round active_color=0xffea9a97 inactive_color=0xff3e8fb0 width=6.0 hidpi=off
    '';
  };
}
