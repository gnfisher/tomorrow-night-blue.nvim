# Tomorrow Night Blue for Neovim

A faithful Lua port of the classic **Tomorrow Night Blue** theme from VS Code for Neovim.

<img width="864" height="506" alt="image" src="https://github.com/user-attachments/assets/010aaa8d-e529-4e01-9515-46628732fef6" />

<img width="864" height="506" alt="image" src="https://github.com/user-attachments/assets/1ab47e8e-ecb0-4935-ada8-78c16fe2c6d0" />


## 🎨 Color Palette

| Color   | Hex       | Usage                          |
|---------|-----------|--------------------------------|
| Background | `#002451` | Editor background           |
| Foreground | `#ffffff` | Main text                   |
| Comment    | `#7285b7` | Comments                    |
| Red        | `#ff9da4` | Errors, identifiers         |
| Orange     | `#ffc58f` | Constants, numbers          |
| Yellow     | `#ffeead` | Types, classes              |
| Green      | `#d1f1a9` | Strings                     |
| Aqua       | `#99ffff` | Operators, special chars    |
| Blue       | `#bbdaff` | Functions                   |
| Purple     | `#ebbbff` | Keywords                    |

## ✨ Features

- 🌙 True Tomorrow Night Blue colors
- 🔌 Extensive plugin support
- 🎯 Treesitter highlighting
- 💡 LSP semantic tokens
- 🖥️ Terminal colors
- 🌐 Transparent background option

## 📦 Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "gnfisher/tomorrow-night-blue.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tomorrow-night-blue").setup({
      -- your configuration
    })
    vim.cmd.colorscheme("tomorrow-night-blue")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "gnfisher/tomorrow-night-blue.nvim",
  config = function()
    require("tomorrow-night-blue").setup()
    vim.cmd.colorscheme("tomorrow-night-blue")
  end,
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'gnfisher/tomorrow-night-blue.nvim'

" In your init.vim after plug#end()
colorscheme tomorrow-night-blue
```

## ⚙️ Configuration

```lua
require("tomorrow-night-blue").setup({
  -- Enable transparent background
  transparent = false,
  
  -- Enable terminal colors
  terminal_colors = true,
  
  -- Style overrides
  styles = {
    comments = { italic = true },
    keywords = { bold = false },
    functions = {},
    variables = {},
    diagnostics = {
      -- Inline diagnostics (virtual text)
      virtual_text = { italic = true },
    },
  },
})
```

## 🔌 Supported Plugins

- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
- [LSP Semantic Tokens](https://neovim.io/doc/user/lsp.html)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [oil.nvim](https://github.com/stevearc/oil.nvim)
- [NvimTree](https://github.com/nvim-tree/nvim-tree.lua)
- [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [Bufferline](https://github.com/akinsho/bufferline.nvim)
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Which Key](https://github.com/folke/which-key.nvim)
- [Lazy.nvim](https://github.com/folke/lazy.nvim)
- [Mason](https://github.com/williamboman/mason.nvim)
- [Trouble](https://github.com/folke/trouble.nvim)
- [Noice](https://github.com/folke/noice.nvim)
- [Notify](https://github.com/rcarriga/nvim-notify)
- [Dashboard](https://github.com/nvimdev/dashboard-nvim)
- [Alpha](https://github.com/goolord/alpha-nvim)
- [Leap](https://github.com/ggandor/leap.nvim)
- [Flash](https://github.com/folke/flash.nvim)
- [Illuminate](https://github.com/RRethy/vim-illuminate)
- [Mini.nvim](https://github.com/echasnovski/mini.nvim)
- [Navic](https://github.com/SmiteshP/nvim-navic)
- [Aerial](https://github.com/stevearc/aerial.nvim)
- [Neogit](https://github.com/NeogitOrg/neogit)
- [Harpoon](https://github.com/ThePrimeagen/harpoon)
- [Snacks.nvim](https://github.com/folke/snacks.nvim)

## 🎨 Lualine Theme

A matching Lualine theme is included:

```lua
require("lualine").setup({
  options = {
    theme = "tomorrow-night-blue",
  },
})
```

## 📜 License

MIT License

## 🙏 Credits

- Original [Tomorrow Theme](https://github.com/chriskempson/tomorrow-theme) by Chris Kempson
- VS Code [Tomorrow Night Blue](https://marketplace.visualstudio.com/items?itemName=gerane.Theme-TomorrowNightBlue) extension
