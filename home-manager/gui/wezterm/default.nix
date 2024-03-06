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
            config.font = wezterm.font_with_fallback {
                { family = "Hack Nerd Font", weight = "Medium" },
                { family = "HackGen Console NF", weight = "Medium", stretch = "Normal", style = Normal },
            }

            config.color_scheme = "rose-pine-moon"

            return config
        '';
    };
}
