### Neovim simple configurations 🌟


## 🚀 Features

- 📦 **Plugin Management**
   - Easy integration with popular plugins using [lazy.vim](https://github.com/folke/lazy.nvim)

- 🌃 **Theming** 
   - 🌈 Beautiful color scheme [Kanagawa](https://github.com/rebelot/kanagawa.nvim). 

   - 🌃 Tokyonight by folkie. 

- ✅ **Installed plugins**

   - [X] lazy.nvim -> package manager to install plugins
   - [X] kanagawa.nvim -> colorscheme to work with tree-sitter
   - [?] mini.nvim -> plugins library collection
      - [X] mini.statusline 
      - [X] mini.pairs - auto pairs for bracktes and quotes
      - [X] mini.icons - better file icons
      - [ ] mini.ai - text objects ['a', 'i']
      - [ ] mini.surrounding - edit surroundings
   - [X] oil.nvim -> Modern file explorer
   - [X] persistence.nvim  -> Save and restore sessions
   - [X] Basic options
   - [?] editorconf
   - [X] showkeys
   - [X] treesitter.nvim ** will change in the future** 
   - [X] treesitter-textobjects
   - [X] which-key
   - [ ] fzflua
   - [ ] project.nvim
   - [ ] LSP
   - [ ] Mason
   - [ ] dressing.nvim
   - [ ] conform.nvim
   - [ ] blink-cmp


- ✅ **Language Server Protocols**
   - [ ] Python
   - [ ] Rust
   - [ ] SQL

- ✅ **Additional Configurations**
  - [ ] autocmds
  - [ ] options
  - [ ] keymaps


## 📦 Requirements 
- Neovim 0.11*
- luarocks and lua
- Nerdfont with icons installed.
- tree-sitter-cli

## 📦 Installation

To start using just download it to yout nvim path, or use NVIM_APPNAME="current_conf"

- **Clone the Repository**:

```bash
# Backuo your current config first
$ mv ~/.config/nvim ~/.config/nvim.bkp

# Dowload and install
$ git clone https://github.com/smrenato/smrenato.nvim.git ~/.config/nvim # clone the repo

# Remove git repositorie
$ rm -rf ~/.config/nvim/.git # remove git 

```
