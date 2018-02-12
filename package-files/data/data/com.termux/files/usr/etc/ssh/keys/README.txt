Usually, SSH host keys should be generated on first installation
of Termux RootFS when you are run 'termux-setup-rootfs'.

If host keys are not present in this directory, you can generate
them with following commands:

  $ ssh-keygen -t ed25519 -f host_ed25519 -N ''
  $ ssh-keygen -t rsa -b 4096 -f host_rsa -N ''
