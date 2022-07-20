# Git Setup Guide

## Prerequisites

- Estabhlished account on a Source Control service (i.e. Gitlab/Github).
- Vistual Studio Code preinstalled on your workstation.
- If you're using a UNIX system, access to the terminal and basic understanding of commands.

## Install Git

- Download Git to your workstation via <https://git-scm.com>
- Install Git using the following recommended setttings:
  - Use Visual Studio Code as Git’s default editor
  - Set default branch to ‘main’
  - Git from command line and also from 3rd-party software
  - Use OpenSSL library
  - Checkout Windows-style, commit Unix-style line endings
  - Use MinTTY
  - Default pull behavior (fast-forward or merge)
  - Git Credential Manager Core
  - Enable file system caching

### Establish Git Config

- On your workstation, open your 'user' directory:
  - `C:\Users\%USERPROFILE%` on Windows.
  - `~/` on UNIX systems.
- Create a new file: `.gitconfig`
  - On a UNIX system this can be done on the console by typing: `nano .gitconfig`
- Drop in the following recommended settings in to your `.gitconfig`
  - Please ensure to update the fields surrounded by open-angle brackets: `< >`

```text
[user]
                name = <FIRST LAST>
                email = <EMAIL>
                username = <USER ID>
[core]
                editor = vim
[color]
                ui = auto
[color "branch"]
                current = yellow bold
                local = green bold
                remote = cyan bold
[color "diff"]
                meta = yellow bold
                frag = magenta bold
                old = red bold
                new = green bold
                whitespace = red reverse
[color "status"]
                added = green bold
                changed = yellow bold
                untracked = red bold
[alias]
                hist = log --pretty=format:'%h %ad | %s%d [%an] ' --date=short
                cleanlog = log --graph --oneline --decorate --all
                stat = status -s
                trackhead = reflog
[init]
                defaultBranch = main
[pull]
                rebase = true
                ff = only
```

- Save and close.

## Estblishing Connection to Source Control

In order to establish a connection between Source Control and your local workstation, you'll need to exchange secure, shared keys via SSH.

You will need to establish shared (SSH) keys between your remote reposiboty (GitLab/GitHub) and your local workstation.
GitHub:

- [GitHub Guide to SSH shared keys](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
- [GitLab Guide to SSH Shared keys](google.com)

## Establish a Local Directory/Repository

The following steps assume that you are creating a new local repository from scratch. If you already have a working remote repositry on Github or Gitlab, please see [PLACEHOLDER](google.com).

- Create a new folder on your workstation.
  - Recommendation: Name the folder something meaningful based on the scope of your code. Between words, use a dash `-` instead of a space.
- Open up Visual Studio Code and open the folder you just created.
- Within your folder, start by creating a New File: `README.md`
- Jump down to the terminal (`ctrl` + `~`) and open up the `Git Bash` profile.
  - PS: this can be done by clicking the down-arrow next to the `+` in the terminal window.
- `git --verstion` to confirm your install and running version.
  - If there is no result or the result is unexpected, you may need to review your Git installation.
- `git init` to initialize your folder into a Git repository.
  - This will create a `.git/` folder within your repository. Use `ls -al` to confirm.

## Set Branch to 'Main'

If Git was installed correctly your default branch should be `main`. If this is the case, you may skip this section. Otherwise, you may execute the following commands to covert from the `master` branch to `main`:

- `git checkout -b main` to establish and move to the `main` branch.
- `git branch -d master` will delete the `master` branch.
- `git branch` will allow you to verify current/existing branches.
