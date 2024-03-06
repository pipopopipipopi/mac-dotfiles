{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Languages
    ## C
    gcc

    ## Python
    python312
  ];
}
