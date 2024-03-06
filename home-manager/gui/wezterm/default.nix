{ pkgs, ... }:

{
    programs.wezterm = {
        enable = true;
        extraConfig = ''
            local wezterm = require "wezterm"

            local config = {}

            config.window_decorations = "RESIZE"
            config.window_background_opacity = 0.77
            config.hide_tab_bar_if_only_one_tab = true

            config.use_ime = true

            config.font_size = 16

            config.color_scheme = "rose-pine-moon"

            return config
        '';
    };
}
