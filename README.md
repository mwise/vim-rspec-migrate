vim-rspec-migrate
===============

Some helpers for migrating to RSpec's expect syntax.

## Usage

Includes the following commands:

* ConvertShouldToExpect

## Installation

Use [pathogen.vim](https://github.com/tpope/vim-pathogen) or [Vundle.vim](https://github.com/gmarik/Vundle.vim)

### Key bindings
To make it more convenient, add some key bindings to your `.vimrc`:

```
  :noremap <leader>ew :ConvertShouldToExpect<CR>
```
