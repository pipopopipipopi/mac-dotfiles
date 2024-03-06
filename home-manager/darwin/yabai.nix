{ config, pkgs, lib, ... }:

{
  home.file.yabai = {
    executable = true;
    target = ".config/yabai/yabairc";
    text = ''
      #!/usr/bin/env sh

      # Unload the macOS WindowManager process
      # launchctl unload -F /System/Library/LaunchAgents/com.apple.WindowManager.plist > /dev/null 2>&1 &

      sudo yabai --load-sa

      yabai -m config external_bar               all:35:0     \
                      window_border              off          \
                      mouse_follows_focus        off          \
                      focus_follows_mouse        off          \
                      window_zoom_persist        off          \
                      window_placement           second_child \
                      window_topmost             off          \
                      window_shadow              float        \
                      window_opacity             off          \
                      window_opacity_duration    0.0          \
                      active_window_opacity      1.0          \
                      normal_window_opacity      1.0          \
                      window_border_width        1            \
                      window_border_hidpi        off          \
                      window_border_radius       11           \
                      window_border_blur         off          \
                      window_animation_duration  0.3          \
                      active_window_border_color 0xffe1e3e4   \
                      normal_window_border_color 0xff494d64   \
                      insert_feedback_color      0xff9dd274   \
                      split_ratio                0.50         \
                      auto_balance               off          \
                      mouse_modifier             fn           \
                      mouse_action1              move         \
                      mouse_action2              resize       \
                      mouse_drop_action          swap         \
                      layout                     bsp          \
                                                              \
                      top_padding                6            \
                      bottom_padding             6            \
                      left_padding               6            \
                      right_padding              6            \
                      window_gap                 8

      echo "yabai configuration loaded.."
    '';
  };

  home.file.skhd = {
    target = ".config/skhd/skhdrc";
    text = let yabai = "/opt/homebrew/bin/yabai"; in
      ''
        # Move focus windows
        alt - j : ${yabai} -m window --focus west
        alt - k : ${yabai} -m window --focus south
        alt - l : ${yabai} -m window --focus north
        alt - 0x29 : ${yabai} -m window --focus east

        # Moving windows
        shift + alt - j : ${yabai} -m window --warp west
        shift + alt - k : ${yabai} -m window --warp south
        shift + alt - l : ${yabai} -m window --warp north
        shift + alt - 0x29 : ${yabai} -m window --warp east

        # Change desktop
        alt - 1 : ${yabai} -m space --focus 1
        alt - 2 : ${yabai} -m space --focus 2
        alt - 3 : ${yabai} -m space --focus 3
        alt - 4 : ${yabai} -m space --focus 4
        alt - 5 : ${yabai} -m space --focus 5
        alt - 6 : ${yabai} -m space --focus 6
        alt - 7 : ${yabai} -m space --focus 7
        alt - 8 : ${yabai} -m space --focus 8
        alt - 9 : ${yabai} -m space --focus prev
        alt - 0 : ${yabai} -m space --focus next

        # Moveing windows to workspaces
        shift + alt - 1 : ${yabai} -m window --space 1
        shift + alt - 2 : ${yabai} -m window --space 2
        shift + alt - 3 : ${yabai} -m window --space 3
        shift + alt - 4 : ${yabai} -m window --space 4
        shift + alt - 5 : ${yabai} -m window --space 5
        shift + alt - 6 : ${yabai} -m window --space 6
        shift + alt - 7 : ${yabai} -m window --space 7
        shift + alt - 8 : ${yabai} -m window --space 8
        shift + alt - 9 : ${yabai} -m window --space prev
        shift + alt - 0 : ${yabai} -m window --space next

        # toggle window native fullscreen
        shift + alt - f : ${yabai} -m window --toggle native-fullscreen

        # toggle window fullscreen zoom
        alt - f : ${yabai} -m window --toggle zoom-fullscreen

        # float / unfloat window and restore position
        shift + alt - space : ${yabai} -m window --toggle float && yabai -m window --grid 4:4:1:1:2:2

        # toggle split
        alt - e : ${yabai} -m window --toggle split

        # rotate tree
        alt - r : ${yabai} -m space --rotate 90

        # mirror tree y-axis
        alt - y : ${yabai} -m space --mirror y-axis

        # mirror tree x-axis
        alt - x : ${yabai} -m space --mirror x-axis
      '';
  };
}
