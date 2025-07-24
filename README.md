### Neovim simple configurations 🌟


## 🚀 Features

- 📦 **Plugin Management**
   - Easy integration with popular plugins using [lazy.vim](https://github.com/folke/lazy.nvim)

- 🌃 **Theming** 

   - 🌇[Kanagawa](https://github.com/rebelot/kanagawa.nvim) beautiful colorscheme. 

   - 🌃[Tokyonight](https://github.com/folke/tokyonight.nvim) by folkie.

- ✅ **Installed plugins**

   - [X] lazy.nvim -> package manager to install plugins
   - [X] kanagawa.nvim -> colorscheme to work with tree-sitter
   - [X] mini.nvim -> plugins library collection
      - [X] mini.statusline 
      - [X] mini.pairs - auto pairs for bracktes and quotes
      - [X] mini.icons - better file icons
      - [ ] mini.ai - text objects ['a', 'i']
      - [ ] mini.surrounding - edit surroundings
   - [X] oil.nvim -> Modern file explorer
   - [X] persistence.nvim  -> Save and restore sessions
   - [X] indent-blank-lines -> identation guides 
   - [ ] guess-indent -> indentations style
   - [X] showkeys
   - [X] treesitter.nvim ** will change in the future** 
   - [X] treesitter-textobjects
   - [X] which-key -> show keys when we press it
   - [X] fzf-lua -> blazingly faster fuzzy finder wrapper of fzf
   - [X] project.nvim
   - [ ] Mason -> Easily install and manage LSP's, DAP's, linters, and formatters.
   - [ ] LSP -> setup using neovim 0.11*
       - [ ] lua-ls -> lua lsp
       - [ ] ruff -> python lsp
       - [ ] rust-analyzer -> rust lsp
       - [ ]

   - [ ] dressing.nvim
   - [ ] conform.nvim
   - [ ] blink-cmp


- ✅ **Language Server Protocols**
   - [ ] Python -> ruff by astral
   - [ ] Rust -> rust-analyzer by rust fundation
   - [ ] SQL
   - [ ] Lua -> lua-ls

- ✅ **Additional Configurations**

  - [ ] Autocmds
      - [X] Highlight on Yank
      - [X] Enable auto completion on lsp attatch
  - [X] Options
  - [ ] Editorconf

- ⌨️**Keymaps**
    - helpful and lexical keymaps
    - leader key <leader> was set to Space: <leader>[key]

    - [f] find something
        - [f] find files

    - [b] related to buffers
        - [d] buffer delete, delete current buffer
        - [o] delete all buffers except the current

    - [w] manage widow
       - [d] delete current window

    - [s] Sessions
    - [c] Code
        - [l] lsp
        - [f] format


## 📦 Requirements
- Neovim 0.11*
- luarocks and lua
- Nerdfont
- tree-sitter-cli
- Cargo and Rust toolkits
- fzf, bat, fd-fider, ripgrep

## 📦 Installation

To start using just download it to your nvim path, or use NVIM_APPNAME="new_config"

- **Clone the Repository**:

```bash
# Backup your current config
$ mv ~/.config/nvim ~/.config/nvim.bkp

# Dowload and install
$ git clone https://github.com/smrenato/smrenato.nvim.git ~/.config/nvim # clone the repo

# Remove .git
$ rm -rf ~/.config/nvim/.git # remove git 
```
