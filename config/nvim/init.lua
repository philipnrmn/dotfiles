-- Neovim specific settings
-- vim.opt.nocompatible = true     -- be iMproved, required

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Basic options
vim.opt.wildmenu = true
vim.opt.wildignore:append('*.swp,*.so,*.zip')
vim.opt.ttyfast = true
vim.opt.colorcolumn = '120'
vim.opt.ruler = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.errorbells = false
vim.opt.hlsearch = true
vim.opt.startofline = false
vim.opt.showmode = true
vim.opt.title = true
vim.opt.titleold = ''
vim.opt.shortmess:append('atI')
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true


-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- vim.opt.runtimepath:append('~/.vim')
-- vim.opt.packpath:append('~/.vim')

-- Plugin related settings
vim.cmd 'syntax enable'
vim.cmd 'colorscheme distinguished'

-- External tools and commands
-- vim.g.go_fmt_command = "goimports"
-- vim.opt.runtimepath:append('/opt/homebrew/opt/fzf')

-- Error handling for settings that are no longer supported or need manual conversion
-- Set these according to updated Neovim practices or personal preferences
require("nvim-web-devicons").setup()
require('lualine').setup()
require 'lspconfig'.pyright.setup {}
require('neogit').setup {}
require('gitsigns').setup()
require("nvim-tree").setup()
require('barbar').setup()

vim.keymap.set("n", "<c-P>",
  "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })

local bufopts = { noremap=true, silent=true, buffer=bufnr }
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
