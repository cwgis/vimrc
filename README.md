vimrc
=====
Personal vim configurations and some plugins which used in my daily job.

I put vim related settings in `bundle/config/plugin/config.vim` and isolate other plugins' settings in `bundle/config/plugin` directory.

`vimrc`, standard version vimrc only config vimruntime with `pathogen` plugin.

Installing
----------
Clone this repo:

    git clone git://github.com/cwgis/vimrc.git ~/.vim

Fetch submodules, in your `repos` directory:

    sh deploy.sh

Update and Add plugins
----------------------
Upgrade submodules or plugins, in your `repos` directory:

    git submodule init
    git submodule update
    git submodule foreach "git checkout master && git pull"

Add submodule or plugins, in your `repos` directory:

    git submodule add git://github.com:username/plugin.git bundle/pluginname

Shortcut
--------
1. Some usually used key mappings in normal mode:

    a. `nt` to toggle NERDTree on and off

    b. `bf` to toggle bufexplorer on and off

    c. `<tab>` and `<shift><tab>` to increase and decrease the syntax identation.

    d. `ii` to Esc and save

    e. `H` and `L` move to first/last letter of line

    f. `,,` to enable zencoding plugin

    g. `Ctrl + h` and `Ctrl + l` easier navigation between horizontal split windows

    h. `Ctrl + j` and `Ctrl + k` easier navigation between vertical split windows

    i. `space` to clear search highlighting and any message.

    j. `tt` to toggle Tagbar on and off

    k. `M` to find related brackets while viewing code

    l. `zz` to toggle fold on and off

2. Remove tailing whitespace automatically while saving.

3. Show tab and whitespace symbols.

4. Jump to last cursor position when opening a file.

5. Auto complete brackets.

6. Auto detect the encodings.

Plugin list
-----------

I recommend reading the docs of these plugins to understand them better!

* [bufexplorer.zip](https://github.com/vim-scripts/bufexplorer.zip): Buffer Explorer / Browser. This plugin can be opened with `bf`
* [desertEx](https://github.com/vim-scripts/desertEx): desertEx colorscheme
* [fencview](https://github.com/mbbill/fencview): Auto detect the encodings
* [molokai](https://github.com/tomasr/molokai): colorscheme like TextMate
* [html5-syntax.vim](https://github.com/othree/html5-syntax.vim): Plugin of HTML5 Syntax highlighting
* [neocomplcache](https://github.com/Shougo/neocomplcache): Plugin to provides keyword completion system
* [nerdcommenter](https://github.com/scrooloose/nerdcommenter): Plugin for intensely orgasmic commenting
* [nerdtree](https://github.com/scrooloose/nerdtree): Plugin to display a tree explorer for vim, This plugin can be opened with `nt`
* [tagbar](https://github.com/majutsushi/tagbar): Plugin to display tags in a window, ordered by class, This plugin can be opened with `tt`
* [taglist](https://github.com/vim-scripts/taglist.vim): Source code browser
* [vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax): Add CSS3 syntax support to vim's built-in `syntax/css.vim`
* [vim-javascript](https://github.com/pangloss/vim-javascript): Vastly improved vim's javascript indentation
* [vim-markdown](https://github.com/plasticboy/vim-markdown): Syntax highlighting and matching rules for Markdown
* [pathogen.vim](https://github.com/tpope/vim-pathogen): Manages the runtime path of the plugins
* [vim-powerline](https://github.com/Lokaltog/vim-powerline): The ultimate vim statusline utility
* [vim-surround](https://github.com/tpope/vim-surround): Plugin to provide mappings to easily delete, change and add such surroundings in pairs
* [genutils](https://github.com/vim-scripts/genutil): General utility functions
* [lookupfile](https://github.com/vim-scripts/lookupfile): Lookup files using Vim7 ins-completion
* [vim-coffee-script](https://github.com/kchmck/vim-coffee-script.git): CoffeeScript syntax support
* [vim-jsx](https://github.com/mxw/vim-jsx.git): JSX syntax support
* [scss-syntax.vim](https://github.com/cakebaker/scss-syntax.vim.git): SCSS syntax support

Contact
-------
If there's any question or comment, feel free to let me know

email (caiwengui0927@gmail.com)

weibo [sina](http://weibo.com/u/1929039863?wvr=5&)

