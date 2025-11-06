{ config, pkgs, ... }:
{
  networking.hostName = "twilight";
  networking.networkmanager.enable = true;
  networking.firewall.allowedTCPPorts = [ 22 ];

  age.secrets.wifi-password = {
    file = ../secrets/wifi-password.age;
  };

  networking.networkmanager.ensureProfiles.profiles = {
    sushi = {
      connection = {
        id = "sushi";
        type = "wifi";
        autoconnect = true;
      };
      wifi = {
        ssid = "sushi";
        mode = "infrastructure";
      };
      wifi-security = {
        key-mgmt = "wpa-psk";
        psk-file = config.age.secrets.wifi-password.path;
      };
      ipv4.method = "auto";
      ipv6.method = "auto";
    };
  };

  services.openssh.enable = true;
}