{
    description = "COSMIC Nix";

    inputs = {
        nixpkgs.url = "nixpkgs/nixos-25.11";
        nur.url = "github:nix-community/NUR";

	lanzaboote = {
            url = "github:nix-community/lanzaboote/v1.0.0";
            inputs.nixpkgs.follows = "nixpkgs";
	};

        home-manager = {
            url = "github:nix-community/home-manager/release-25.11";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { self, nixpkgs, home-manager, lanzaboote, nur, ... }: {
        nixosConfigurations.onix = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
            modules = [
                ./hosts/x1/configuration.nix

		lanzaboote.nixosModules.lanzaboote
		({ pkgs, lib, ... }: {
		  environment.systemPackages = [
		    pkgs.sbctl
		  ];
		  
		  boot.loader.systemd-boot.enable = lib.mkForce false;

		  boot.lanzaboote = {
		    enable = true;
		    pkiBundle = "/var/lib/sbctl";
		  };

		  nixpkgs.overlays = [ nur.overlays.default ];
		})

                home-manager.nixosModules.home-manager
                {
                    home-manager = {
                        useGlobalPkgs = true;
                        useUserPackages = true;
                        users.ben = import ./users/ben/home.nix;
                        backupFileExtension = "backup";
                    };
                }
            ];
        };
    };
}
