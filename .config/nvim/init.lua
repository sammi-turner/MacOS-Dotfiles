-- Enable syntax highlighting
vim.cmd('syntax enable')

-- Set color scheme (optional)
vim.cmd('colorscheme default')

-- Enable true color support (if your terminal supports it)
vim.o.termguicolors = true

-- Enable line numbers
vim.wo.number = true

-- Set tab width to 4 spaces
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Enable bracket completion
vim.o.autoindent = true
vim.o.smartindent = true

-- Set up bracket pairs
local bracket_pairs = {
    { '(', ')' },
    { '[', ']' },
    { '{', '}' },
    { '"', '"' },
    { "'", "'" },
    { '`', '`' }
}

for _, pair in ipairs(bracket_pairs) do
    vim.keymap.set('i', pair[1], pair[1] .. pair[2] .. '<Left>', { noremap = true, silent = true })
end