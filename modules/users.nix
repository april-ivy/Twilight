{ config, pkgs, ... }:
{
  users.users.april = {
    isNormalUser = true;
    description = "April";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINef2ken7G9138zedVAkEyX+gJtZ8SqACmYK3g4D1+0p me@aprl.pet"
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
    };
  };
}