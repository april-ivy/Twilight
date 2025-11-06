{ config, pkgs, ... }:
{
  users.users.april = {
    isNormalUser = true;
    description = "April";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINef2ken7G9138zedVAkEyX+gJtZ8SqACmYK3g4D1+0p me@aprl.pet"
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEB8ucp3UjKGqBkg2tzX4pUrz50leAUUZoHw9k4ZAzVC nix@aprl.pet"
    ];
  };

  programs.git = {
    enable = true;
    config = {
      user = {
        name = "April";
        email = "me@aprl.pet";
      };
      init.defaultBranch = "main";
      pull.rebase = true;
    };
  };
}