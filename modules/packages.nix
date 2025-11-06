{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    micro
    fastfetch
    git
  ];
}