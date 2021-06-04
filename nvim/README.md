# Neovim config

_This config is heavily inspired by [meowmeowxw](https://github.com/meowmeowxw/neovim-config)'s_

![preview](https://user-images.githubusercontent.com/43646324/112695566-a16c7900-8e84-11eb-8557-667b5dbde2f5.png)

## Installation

[WARNING]
I'm switching to lunarvim, so this configuration may not be updated

- Install neovim, obviously
- Copy all files from this folder to `~/.config/nvim/`
- Install pynvim with `pip install --upgrade pynvim`
- As soon as you start nvim it will show many warnings. Just run `:PlugInstall` inside nvim to install the recessary plugins.
- Run `:CocCommand clangd.install` inside nvim to install clangd for linting C code.
- To change background color to a darker one move onedark.vim from this directory to `~/.local/share/nvim/plugged/onedark.vim/autoload/onedark.vim` (it blends with kitty's background)

## Important plugins

The most important plugins I use are [coc.nvim](https://github.com/neoclide/coc.nvim),
[vim-clap](https://github.com/liuchengxu/vim-clap) and [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
"

### General custom shortcuts

```
<C-K> <C-J> <C-H> <C-L> -> Resize panes.
<space>v -> Open vertical terminal.
<space>x -> Open horizontal terminal.
```

#### Vim Clap

```
<space>y -> Paste precedent yanked lines.
<space>f -> Move between files inside the project and use.
<space>e -> Move between files inside the filesystem.
```

We can open the files inside vim-clap in various mode:

```
<C-V> -> Open file vertically.
<C-X> -> Open file horizontally.
<C-T> -> Open file in new tab.
```

#### Vim Multiple Cursors

### Quick Start
#### normal mode / visual mode
  * start:          `<C-n>` start multicursor and add a _virtual cursor + selection_ on the match
    * next:         `<C-n>` add a new _virtual cursor + selection_ on the next match
    * skip:         `<C-x>` skip the next match
    * prev:         `<C-p>` remove current _virtual cursor + selection_ and go back on previous match
  * select all:     `<A-n>` start multicursor and directly select all matches

You can now change the _virtual cursors + selection_ with **visual mode** commands.
For instance: `c`, `s`, `I`, `A` work without any issues.
You could also go to **normal mode** by pressing `v` and use normal commands there.

At any time, you can press `<Esc>` to exit back to regular Vim.

**NOTE**: start with `g<C-n>` to match without boundaries (behaves like `g*` instead of `*`)

#### visual mode when multiple lines are selected
  * start: `<C-n>` add _virtual cursors_ on each line

You can now change the _virtual cursors_ with **normal mode** commands.
For instance: `ciw`.

#### command
The command `MultipleCursorsFind` accepts a range and a pattern (regexp), it creates a _visual cursor_ at the end of each match.
If no range is passed in, then it defaults to the entire buffer.


#### Coc 

```
<space>cc -> Open Coc Config file.
<leader>rn -> Rename variable.
<leader>f -> Format the file.
K -> open documentation of the function under the cursor.
```

### C/C++ Setup

I usually do `ctags -R .` inside the root of the project. In this way I can move
inside the source code with:

```
<space>t -> Show tags specific of the current file.
<space>p -> Show tags of the whole project.
<space>s -> Select with visual line of the code's current block inside brackets.
<C-]> -> Open new buffer with the tag under the cursor.
<C-T> -> Go back from the tag opened.
```

With coc I recommend the coc-clangd extension, specifically with [Bear](https://github.com/rizsotto/Bear)
to generate the `compile_commands.json`.
In this way is possible to have the intellisense and autocompletion.

### Python

The keybindings I have are:

```
1. <F2> -> Rename a variable.
2. <space>cpe -> Run current file in terminal.
3. <space>cps -> Run current visual selection in terminal.
4. <space>cpl -> Enable/Disable linting.
```

