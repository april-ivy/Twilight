{
  description = "owo";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    agenix.url = "github:ryantm/agenix";
  };

  outputs = { self, nixpkgs, agenix }: {
    nixosConfigurations.twilight = nixpkgs.lib.nixosSystem {
      modules = [
        ./hardware-configuration.nix
        ./modules/base.nix
        ./modules/networking.nix
        ./modules/thinkpad.nix
        ./modules/users.nix
        ./modules/packages.nix
        agenix.nixosModules.default
      ];
    };
  };

}
