# Contents
- [Update symbolic links](#update-symbolic-links)
- [Point your `~/.zshrc` file to the desired repo](#point-your-zshrc-file-to-the-desired-repo)


## Update symbolic links

- Commands below will create all the files if they don't yet exist if they do
  exist, it will update them.
- `-n` allows the link to be treated as a normal file if it is a symlink to a
  directory
- `-f` "force" overwrites without warning if it already exists

## Point your `~/.zshrc` file to the desired repo

```bash
ln -snf ~/github/dotfiles-latest/zshrc/zshrc-file.sh ~/.zshrc >/dev/null 2>&1
source ~/.zshrc
```

```bash
ln -snf ~/github/dotfiles-public/zshrc/zshrc-file.sh ~/.zshrc >/dev/null 2>&1
source ~/.zshrc
```

```bash
# This is on the other repo where I keep my ssh config files
ln -snf ~/github/dotfiles/sshconfig-pers ~/.ssh/config >/dev/null 2>&1
```
