{ pkgs, packages }:
with packages;
{
  system = [
    coreutils
    sd
    bash
    yq-go
    jq
  ];

  dev = [
    pls
  ];

  infra = [
  ];

  main = [
    git
  ];

  cd = [
    sg
    npm
    node
  ];

  lint = [
    # core
    treefmt
  ];
}
