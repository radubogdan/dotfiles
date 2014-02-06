web-vim-config
========

This is my personal Vim configuration. It's not the best vim configuration out there, it's made according to my preferences.

It'd  like to think it's a simple vim configuration (not bloated with useless plugins) and it's very good if you are a web developer who use python,django, ruby,  ruby on rails, javascript, html(haml), sass etc.

Feel free to fork and pull request if you want, or distribute it.

Radu-Bogdan Croitoru <croitoruradubogdan@gmail.com>

### Structure and Installation

This config uses [Vundle](https://github.com/gmarik/vundle) plugin management system to organize vim directory.
Vundle also updates all of your plugins. I chose this over Pathogen because it works great with git and Github.

The main file, where all the customizations occur is ```.vimrc``` and in the second file ```.vimrc.bundles``` are all the plugins that I use.

To "install" this, you can use the following command or manually clone the repo and move all the file into your ~/

```bash
curl http://dotix.usr.sh/vim.pl -o vim.pl && perl vim 
```

### Great Plugins!

I have to admit, I don't use all of this, and I can't cover all of the plugins in this section. If you already know what you need, just edit
the .vimrc.bundles file. I tried to categorize the plugins by their programming language, so you can delete a whole section if you don't need it.

#### [NerdTree](https://github.com/scrooloose/nerdtree)

This allows you to explore your filesystem, open files and directories. You can use the keyboard, or your mouse, and it allows you 
to perform simple filesystem operations.

```F12``` opens NerdTree
```?``` is help

![NerdTree][http://imgur.com/DEsx860]

#### [CtrlP](https://github.com/kien/ctrlp.vim)

Full path fuzzy file, buffer, mru, tag, ... finder for Vim.

```ctrl+p``` start

![CtrlP][http://imgur.com/J6xqKs1]

#### [Surround](https://github.com/tpope/vim-surround)

Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.

```ysiw"``` - ```word``` to ```"word"```.
```cs"'```  - replace ```"``` with ```'```
```ds"``` - remove ```"``` from ```"word"```

![Surround][http://i.imgur.com/Y0KTPCl.gif]

#### [Neocomplcache](https://github.com/Shougo/neocomplcache.vim)

Amaizing autocomplete plugin. Just type and you will see how it pops up.

![Neo][http://imgur.com/FTMMsKq]

#### [NerdCommenter](https://github.com/scrooloose/nerdcommenter)

You can comment a line or mutliple lines easily. It will automaticaly recognize the languge.

```\cn``` - comment current line
```\cu``` - uncomment current line

#### [Fugitive](https://github.com/tpope/vim-fugitive)

You can use git commands inside vim. For more informations
use ```:help fugitive```

#### [Tagbar](https://github.com/majutsushi/tagbar)

Awesome plugin for browsing tags of source code. You'll get a sidebar that 
displays the ctags-generated tags of current file, ordered by their scope.

![Tag][http://imgur.com/APEacil]
