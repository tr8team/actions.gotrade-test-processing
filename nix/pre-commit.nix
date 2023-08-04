{ formatter, pre-commit-lib, packages }:
pre-commit-lib.run {
  src = ./.;

  # hooks
  hooks = {
    # formatter
    treefmt = {
      enable = true;
      excludes = [ "CommitConventions.md" "Changelog.md" ];
    };
    # linters From https://github.com/cachix/pre-commit-hooks.nix
    shellcheck = {
      enable = true;
    };
  };

  settings = {
    treefmt = {
      package = formatter;
    };
  };
}
