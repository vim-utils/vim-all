# all.vim

Idiomatic vim text objects that work on the whole buffer.

### Text objects

* `<Enter>` all lines in the buffer
* `a<Enter>` same as `<Enter>`, added for consistency
* `i<Enter>` inside lines - all lines, except leading and trailing empty lines

### Examples

**\<Enter>**

* `v<Enter>` visually select all lines in the buffer
* `c<Enter>` delete the whole buffer and start insert mode

**a\<Enter>**

* `ya<Enter>` yank all lines in the buffer
* `da<Enter>` delete the whole buffer

**i\<Enter>**

* `vi<Enter>` visually select all non empty lines
* `yi<Enter>` yank all non empty lines

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

### Other

[vim-textobj-entire](https://github.com/kana/vim-textobj-entire) seems to do the
same thing, but has different mappings.

### License

[MIT](LICENSE.md)
