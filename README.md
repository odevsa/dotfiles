# DOTFILES for Arch Linux + Cosmic

## Disclaimer

This is for my personal use and it's working in progress, so files can be deleted, things can break, etc. If you want to try it, it`s for your own risk.

## Arch Linux + Cosmic + This Dotfiles

See: https://github.com/odevsa/aca

## Automatic Install

Just run this code and see the magic

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/odevsa/dotfiles/main/install.sh)"
```

## Manual Install

- Clone the repo

  ```
  git clone https://github.com/odevsa/dotfiles.git /tmp/dotfiles
  ```

- Replace `{{user}}` to `$USER`

  ```
  find /tmp/dotfiles -type f -exec sed -i "s/{{user}}/$USER/g" '{}' \;
  ```

- Copy files

  ```
  cp -R /tmp/dotfiles/. $HOME
  ```

- Remove Unused files

  ```
  rm -rf ~/.git ~/install.sh ~/README.md
  ```
