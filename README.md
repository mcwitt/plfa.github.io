# Personal fork of [plfa/plfa.github.io][]

See original [README](./README.original.md).

This fork adds:

- Nix environment setup in [`shell.nix`](./shell.nix)
- exercise solutions (in `solutions` branch)

[plfa/plfa.github.io]: https://github.com/plfa/plfa.github.io/

## Nix setup notes


### Prerequisites

1. [direnv](https://direnv.net/) set up in your shell.

2. [lorri](https://github.com/target/lorri) set up with daemon running.

3. Emacs with the following packages available:
    - use-package
    - direnv-mode
    - agda2-mode


## Setup

1. Add the following Emacs configuration:

    ``` elisp
    (use-package agda2-mode
      :mode ("\\.l?agda\\'" "\\.lagda.md\\'"))
    ```

2. Run `direnv allow`. This will build the environment declared in `shell.nix` and ensure that Emacs can find the `agda` binary.
