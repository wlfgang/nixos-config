{ pkgs, lib, ... }:

{
  # Enable Neovim
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    plugins = [
      # Tree sitter is a parsing/syntax highlighting plugin supporting many languages
      pkgs.vimPlugins.nvim-treesitter
      pkgs.vimPlugins.nvim-treesitter.withAllGrammars 
    ];
  };
}
