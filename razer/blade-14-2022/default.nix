{
  lib,
  config,
  ...
}: {
  imports = [
    ../../common/cpu/amd
    ../../common/gpu/amd
    ../../common/gpu/nvidia.nix
    ../../common/pc/laptop/ssd
  ];

  boot.kernelParams = lib.mkIf (config.boot.kernelPackages.kernelOlder "6.4") [
    "acpi_backlight=native" # fixes brightness control
  ];
}
