# nixos-config

This directory contains my NixOS configuration, which uses Home Manager to define a standard configuration and set of packages across my various systems.

## Commands

After changing configuration.nix, run:
sudo nixos-rebuild switch --flake .

After changing home.nix, run:
home-manager switch --flake .

Don't forget to git commit/push the changes!
