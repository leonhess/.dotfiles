# Dotfiles
This is my repo to keep track of my dotfiles

## Setup 
I used [atlassian's](https://www.atlassian.com/git/tutorials/dotfiles) method to track the dotfiles.

To use the dotfiles on a new machine use the following commands:

```


alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
echo ".cfg" >> .gitignore
git clone --bare git@github.com:leonhess/.dotfiles.git $HOME/.cfg
config config --local status.showUntrackedFiles no
```
