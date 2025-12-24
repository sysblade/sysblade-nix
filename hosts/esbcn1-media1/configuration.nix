{ config, pkgs, ... }:

{
  imports = [
    ./hardware.nix
    ../../modules/core/server/default.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  networking.hostName = "esbcn1-media1";
  time.timeZone = "Europe/Madrid";
}
