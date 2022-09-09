{
  inputs,
  cell,
}: let
  l = nixpkgs.lib // builtins;
  inherit (inputs) nixpkgs std;
in
  l.mapAttrs (_: std.std.lib.mkShell) {
    default = {...}: {

      std.adr.enable = false;

      name = "Zeek Spicy IMAP";

      imports = [
        inputs.cells-lab.main.devshellProfiles.default
        inputs.hunting-lab.zeek.devshellProfiles.default
        inputs.hunting-lab.zeek.devshellProfiles.action
      ];

      nixago = [
        cell.nixago.mdbook
      ];
    };
  }
