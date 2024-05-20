{ pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    alacritty
    kitty
  ];

  # kitty settings
  programs.kitty.enable = true;
  programs.kitty.settings = {
    background_opacity = lib.mkForce "0.75";
  };

  # alacritty settings
  programs.alacritty.enable = true;
  programs.alacritty.settings = {
    env.TERM = "xterm-256color";
    font = {
      size = 16;
      draw_bold_text_with_bright_colors = true;
    };
  };
}
