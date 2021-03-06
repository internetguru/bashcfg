# Bash config

> Functions and aliases to support using Git Flow model.

### Usage

- Clone this repository

    ```bash
    git clone https://github.com/InternetGuru/bashcfg.git
    ```

- Add the following lines into your `.bashrc` file

    ```bash
    echo "IG bashcfg, version $(< $HOME/"bashcfg/VERSION")"
    source "$HOME/bashcfg/common"
    source "$HOME/bashcfg/git_functions"
    ```
