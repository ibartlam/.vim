.vim
====

My vim dot files. the `.vimrc` file is saved to [vimrc](https://github.com/ibartlam/.vim/blob/master/vimrc).

Just run the following commands via terminal to get set up:

```console
$ cd ~/
$ git clone --recursive https://github.com/ibartlam/.vim.git .vim
$ ln -sf $HOME/.vim/vimrc $HOME/.vimrc
$ cd $HOME/.vim
$ git submodule update --init
```