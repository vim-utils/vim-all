# all.vim

Text objects that work on the whole buffer.

### Text objects

* `a<Enter>` all lines
* `i<Enter>` inside lines - all lines, except leading and trailing empty lines

### Examples

* `va<Enter>` visually selects all lines in the buffer
* `da<Enter>` deletes the whole buffer
* `vi<Enter>` visually selects all non empty lines
* `yi<Enter>` yanks all non empty lines

### Why?

Instead of using this plugin you can type `ggVG` + `operator` to get similar
behavior.

This plugin brings you:
* "vim idiomatic" mappings
* less keystrokes to type
* speed

### Installation

* Vundle<br/>
`Plugin 'bruno-/vim-all'`

* Pathogen<br/>
`git clone git://github.com/bruno-/vim-all.git ~/.vim/bundle/vim-all`

### License

[MIT](LICENSE.md)
