# Bash config

> Useful set of functions and aliases.

### Usage

- Clone this repository

    ```bash
    git clone https://github.com/InternetGuru/bashcfg.git ~/bashcfg
    ```

- Run the install script, preview its changes first with `--dry-run`

    ```bash
    ~/bashcfg/install --dry-run
    ~/bashcfg/install
    ```

    It makes `~/.bashrc` source bashcfg (a block marked `# >>> bashcfg >>>`) and removes aliases defined before that block which bashcfg redefines or which are obsolete (`egrep`, `fgrep`). Duplicate functions and definitions after the block are reported only. The original is kept as `~/.bashrc.bak-<timestamp>`. Run it again after updating bashcfg or moving the directory.

- Browse what is defined; every alias and function is described in the source files

    ```bash
    alias             # list aliases
    declare -F        # list function names
    type NAME         # show what NAME is and its definition
    ```
