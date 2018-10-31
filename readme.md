# Stéphane's dotfiles.

I use this to share my configuration between my machines. You're free to take or inspire yourself from the parts you want.

## Installation

```bash
cd $HOME
git clone --recurse-submodules https://github.com/onigoetz/dotfiles.git
cd dotfiles/install

# Install Dotfiles
./dotfiles.sh

# Sane osx default
./.osx

# Install softwares
# I don't running the file directly, check the files you need from it
./install-osx.sh
```

To update later on, just run the sync again.

## Private config

Toss it into a file called `.extra` which you do not commit to this repo and just keep in your `~/`

I do something nice with my `PATH` there:

```shell
# PATH like a bawss
      PATH=/opt/local/bin
PATH=$PATH:/opt/local/sbin
PATH=$PATH:/bin
PATH=$PATH:~/.rvm/bin
PATH=$PATH:~/code/git-friendly
# ...

export PATH
```

## Installation - Fonts and themes

- https://github.com/tonsky/FiraCode

### Visual Studio Code

```json
{
    "editor.fontFamily": "'Fira Code', Menlo, Monaco, 'Courier New', monospace",
    "editor.fontLigatures": true,
    "terminal.integrated.shell.osx": "/usr/local/bin/zsh"
}
```