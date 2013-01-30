vimrc
=====
Personal vim configurations and some plugins which used in my daily job.

I put vim related settings in `bundle/config/plugin/config.vim` and isolate other plugins' settings in `bundle/config/plugin` directory.

`vimrc`, standard version vimrc only config vimruntime with `pathogen` plugin.

Installing
----------
Clone this repo:

	git clone git://github.com/cwgis/vimrc.git ~/.vim
	cd ~/.vim && mv vimrc ~/.vimrc

Fetch submodules, in your `~/.vim` directory:

    git submodule init
    git submodule update

Upgrade submodules or plugins, in your `~/.vim` directory:

    git submodule foreach "git checkout master && git pull"

Add submodule or plugins, in your `~/.vim` directory:

	git submoduel add git://github.com:username/repo.git bundle/repo

Shortcut
--------
1. BACKUP your `.vim` directory and `.vimrc` first.(IMPORTANT!)

2. Some usually used key mappings in normal mode:

	a. `nt` to toggle NERDTree on and off

	b. `bf` to toggle bufexplorer on and off

	c. `<tab>` and `<shift><tab>` to increase and decrease the syntax identation.

	d. `ii` to Esc and save

	e. `H` and `L` move to beginning/end of line

	f. `,,` to enable zencoding plugin

	g. `Ctrl + h` and `Ctrl + l` easier navigation between horizontal split windows

	h. `Ctrl + j` and `Ctrl + k` easier navigation between vertical split windows

	i. `space` to clear search highlighting and any message.

3. Remove tailing whitespace automatically while saving.

4. Show tab and whitespace symbols.

5. Jump to last cursor position when opening a file.

Plugin list
-----------

Contact
-------
If there's any question or comment, feel free to let me know

email (caiwengui0927@gmail.com)

weibo [sina](http://weibo.com/u/1929039863?wvr=5&)
