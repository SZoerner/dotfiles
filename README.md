dotfiles
========

It really can be as simple as:

    $ cd ~ && git init dotfiles
    $ mv .bashrc dotfiles/_bashrc
    $ ln -s ~/dotfiles/_bashrc ~/.bashrc
    $ cd dotfiles && git -am 'adding initial .bashrc'
    
## ToDo

- brew list
- .gitconfig
- SublimeText Conf
- emacs conf
- vim conf
