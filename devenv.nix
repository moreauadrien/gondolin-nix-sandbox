{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  env.XDG_CACHE_HOME = "/tmp/xdg-cache";

  # e2fsprogs.bin provides mke2fs (gondolin's findMke2fs);
  # which, gnutar and qemu(-img) are invoked by gondolin build/run.
  packages = [
    pkgs.git
    pkgs.cpio
    pkgs.lz4
    pkgs.e2fsprogs
    pkgs.e2fsprogs.bin
    pkgs.gnutar
    pkgs.which
    pkgs.qemu
  ];

  languages = {
    javascript.enable = true;
    javascript.npm.enable = true;
  };
}
