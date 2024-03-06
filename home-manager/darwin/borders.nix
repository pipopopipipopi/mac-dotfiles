{ config, pkgs, lib, ... }:
{
  home.file.borders = {
    executable = true;
    target = ".config/borders/bordersrc";
    text = ''
      #!/user/bin/env sh
      borders active_color=0x000000 inactive_color=0xffffff width=6.0
    '';
  };
}
