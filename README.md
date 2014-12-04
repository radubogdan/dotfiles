web-vim-config
========

This is my personal Vim configuration. It's not the best vim configuration out there, it's made according to my preferences.

There are 2 versions of this, the __normal__ one has more plugins and it's going to load a little bit slow.The __light__ one is faster and has less plugins.

Feel free to fork, pull request or distribute it.

Radu-Bogdan Croitoru <croitoruradubogdan@gmail.com>

### Structure and Installation

This config uses [Vundle](https://github.com/gmarik/vundle) plugin management system to organize vim directory.
Vundle also updates all of your plugins. I chose this over Pathogen because it works great with git and Github.

The main file, where all the customizations occur is ```.vimrc``` and in the second file ```.vimrc.bundles``` are all the plugins that I use.

After you choose a version, you can install it:

__Normal:__

```bash
curl http://dotix.me/install.pl -o install.pl && perl install.pl normal
```

__Light:__

```bash
curl http://dotix.me/install.pl -o install.pl && perl install.pl lite
```

### Great Plugins!

I can't cover all of the plugins in this section. If you already know what you need, just edit
the .vimrc.bundles file. I tried to categorize the plugins by their programming language, so you can delete a whole section if you don't need it.

#### [NerdTree](https://github.com/scrooloose/nerdtree)

This allows you to explore your filesystem, open files and directories. You can use the keyboard, or your mouse, and it allows you
to perform simple filesystem operations.

```F12``` opens NerdTree

```?``` is help

![NerdTree image][nerdtree-img]

#### [CtrlP](https://github.com/kien/ctrlp.vim)

Full path fuzzy file, buffer, mru, tag, ... finder for Vim.

```ctrl+p``` start

![CtrlP image][ctrlp-img]

#### [Surround](https://github.com/tpope/vim-surround)

Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.

```ysiw"``` - ```word``` to ```"word"```.

```cs"'```  - replace ```"``` with ```'```

```ds"``` - remove ```"``` from ```"word"```

![Surround image][surround-img]

#### [Neocomplcache](https://github.com/Shougo/neocomplcache.vim)

Amaizing autocomplete plugin. Just type and you will see how it pops up.

![Neocomplcache image][neo-img]

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

![Tagbar image][tag-img]


#### [Easymotion](https://github.com/Lokaltog/vim-easymotion)

Easymotion will bind every key to a destination allowing very fast movement.

![Easymotion image][em-img]

#### [Vim-Ruby](https://github.com/vim-ruby/vim-ruby)

Vim configuration files for editing and compiling Ruby within Vim.

#### [Vim-Rails](https://github.com/tpope/vim-rails)

This plugin provides:

* Interface to ```Rails``` command. You can use ```:Rails console``` to call the console.
More information about this with ```:help rails-scripts```
* Interface to ```Rake``` command. You can use ```:Rake``` to run the current test, spec
or feature. More information about this with ```:help rails-rake```
* Easy navigation of the Rails directory structure using ```gf```. To jump between files
```:A``` and ```:R```

#### [Syntastic](https://github.com/scrooloose/syntastic)

Syntastic is a syntax checking plugin for Vim that runs files through external syntax checkers and displays any resulting errors to the user.

![Syntastic image][syn-img]

#### [indent-guide-lines](http://i.imgur.com/j0dnVKm.png)

Indent Guides is a plugin for visually displaying indent levels in Vim.
You can enable or disable this with ```\ig```

![indent-guide-lines image][igl-img]

#### [Airline](https://github.com/bling/vim-airline)

Lean & mean status/tabline for vim that's light as air.

![Airline image][air-img]

[nerdtree-img]:http://i.imgur.com/DEsx860.gif
[ctrlp-img]:http://i.imgur.com/J6xqKs1.png
[surround-img]:http://i.imgur.com/Y0KTPCl.gif
[neo-img]:http://i.imgur.com/FTMMsKq.png
[tag-img]:http://i.imgur.com/APEacil.png
[em-img]:http://i.imgur.com/1iWLbX0.gif
[igl-img]:http://i.imgur.com/j0dnVKm.png
[air-img]:http://i.imgur.com/rAFjisQ.gif
[syn-img]:http://i.imgur.com/kZHxXXS.png
