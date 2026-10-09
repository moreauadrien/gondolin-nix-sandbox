# Gondolin Nix Sandbox

This project builds a [Gondolin](https://github.com/earendil-works/gondolin) sandbox (microVM) using Alpine Linux as the guest, with [Nix](https://nixos.org) as the package manager.

## Usage

```bash
# Build the VM image
npm run build-vm

# Start the VM
npm run vm
```

Inside the VM, Nix and devenv are available (`nix --version`, `devenv --version`).

## Requirements

- Node.js >= 22
- QEMU
- Docker or Podman
