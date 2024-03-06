{ config, pkgs, ... }:

{
  imports = [ ./starship.nix ];
  programs.fish = {
    enable = true;

    interactiveShellInit = ''
      function fish_user_key_bindings
        for mode in default insert visual
          fish_default_key_bindings -M $mode
        end
        fish_vi_key_bindings --no-erase
      end
      
      fish_add_path /etc/profiles/per-user/pipopo/bin
      fish_add_path /opt/homebrew/bin
    '';

    shellInit = ''
      set fish_color_normal e0def4
      set fish_color_command c4a7e7
      set fish_color_keyword 9ccfd8
      set fish_color_quote f6c177
      set fish_color_redirection 3e8fb0
      set fish_color_end 908caa
      set fish_color_error eb6f92
      set fish_color_param ea9a97
      set fish_color_comment 908caa
      # fish_color_match --background=brblue
      set fish_color_selection --reverse
      # fish_color_history_current --bold
      set fish_color_operator e0def4
      set fish_color_escape 3e8fb0
      set fish_color_autosuggestion 908caa
      set fish_color_cwd ea9a97
      # fish_color_cwd_root red
      set fish_color_user f6c177
      set fish_color_host 9ccfd8
      set fish_color_host_remote c4a7e7
      set fish_color_cancel e0def4
      set fish_color_search_match --background=232136
      set fish_color_valid_path

      # pager color variables
      # https://fishshell.com/docs/current/interactive.html#pager-color-variables
      set fish_pager_color_progress ea9a97
      set fish_pager_color_background --background=2a273f
      set fish_pager_color_prefix 9ccfd8
      set fish_pager_color_completion 908caa
      set fish_pager_color_description 908caa
      set fish_pager_color_secondary_background
      set fish_pager_color_secondary_prefix
      set fish_pager_color_secondary_completion
      set fish_pager_color_secondary_description
      set fish_pager_color_selected_background --background=393552
      set fish_pager_color_selected_prefix 9ccfd8
      set fish_pager_color_selected_completion e0def4
      set fish_pager_color_selected_description e0def4
    '';

    shellAliases = import ./aliases.nix;
  };
}
