## sae

###### the name "sae" comes from Salticidae, the family of jumping spiders

A simple [vim](https://www.vim.org/) plugin that enhance motions between words and lines

#### what

The purpose of this plugin is to provide four mappings that help move quickly between words and lines.

**SaeUp** and **SaeDown** provide a smooth scrolling.

**SaeRight** and **SaeLeft** act like **w** and **b** motions but without the annoying wrapping on line break!

#### install

Follow the traditional way of your plugin manager.

For example with [vim-plug](https://github.com/junegunn/vim-plug) add this in `.vimrc`
```
Plug 'doums/sae'
```

then run in vim
```
:source $MYVIMRC
:PlugInstall
```

#### usage
normal mod
```
nmap <A-l> <Plug>SaeRight
nmap <A-h> <Plug>SaeLeft
```
visual mod
```
vmap <A-l> <Plug>SaeRight
vmap <A-h> <Plug>SaeLeft
```

#### license
Mozilla Public License 2.0
