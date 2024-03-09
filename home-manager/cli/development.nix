{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Languages
    ## C
    gcc

    ## Python
    python312

    ## Rust
    rust-bin.stable.latest.default
  ];
}
