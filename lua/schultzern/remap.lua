--For checking diagnostics of an error do <leader>d
--For opening fzf in normal terminal do Alt+c
--Telescope file finder Ctrl+X, press C-v for vsplit, C-x for split, C-t for new tab

local function update_all()
    vim.cmd('TSUpdate')
    vim.cmd('PackerSync')
    vim.cmd('Mason')
end

-- Create an autocommand group for LaTeX specific settings
vim.api.nvim_create_augroup('LaTeX', { clear = true })

-- Autocommands for LaTeX files
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'tex',
  group = 'LaTeX',
  callback = function()
    -- Remap when in a .tex file
    vim.api.nvim_buf_set_keymap(0, 'n', 'j', 'gj', {noremap = true, silent = true})
    vim.api.nvim_buf_set_keymap(0, 'n', 'k', 'gk', {noremap = true, silent = true})
    vim.api.nvim_buf_set_keymap(0, 'n', '$', 'g<space>', {noremap = true, silent = true})
    vim.api.nvim_buf_set_keymap(0, 'n', '0', 'gn', {noremap = true, silent = true})
  end
})

--Goes to definition
vim.keymap.set('n', 'gd', '<cmd>vsplit | lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true})

--Runs the update_all function
vim.api.nvim_create_user_command('UpdateAll', update_all, {})

--Sets the mapleader key
vim.g.mapleader = ","

--Sets the keymaps open diagnostic on error I am on
vim.keymap.set('n', '<leader>d', ':lua vim.diagnostic.open_float(nil, {focus = false})<CR>', {noremap = true, silent = true})

--Sets the keymaps to replace name of variables at once
vim.keymap.set('n', '<leader>r', ':%s/')

--Opens the netrw dir
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--Changes keymapping for end of line and beginning of line
vim.keymap.set("n", "<Space>", "$", {noremap = true})
vim.keymap.set("n", "n", "^", {noremap = true})

--Moves highlighted lines up and down inside the file
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--Makes what is highlighted copied to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

--Changes permissions of file i am in to be executable
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", {silent = true})

--Sets Ctrl + z to go back just like u
vim.keymap.set('n', '<C-z>', ':undo<CR>', {noremap = true})

--Sets Ctrl + s to save file like :w
vim.keymap.set('n', '<C-s>', ':w<CR>', {noremap = true})

--Sets Ctrl + q to quit like :q!
vim.keymap.set('n', '<C-q>', ':q!<CR>', {noremap = true})

--Sets Ctrl + t to open new terminal in left split and resize it to 40%
-- vim.keymap.set('n', '<C-t>', ':botright vsplit | terminal<CR> :vertical resize 40<CR>')

--Sets from terminal Job mode to terminal Normal mode so I can swap between terminal and code
-- vim.keymap.set('t', '<C-q>', '<C-\\><C-n>')

--Sets the keymaps to move between file that are open when displayed more than one, normally Ctrl + w and then one of HJKL
-- vim.keymap.set('n', '<C-h>', '<C-w>h', {noremap = true})
-- vim.keymap.set('n', '<C-l>', '<C-w>l', {noremap = true})
-- vim.keymap.set('n', '<C-j>', '<C-w>j', {noremap = true})
-- vim.keymap.set('n', '<C-k>', '<C-w>k', {noremap = true})


--Sets mappings to complete parentheses and quotes
vim.keymap.set('i', '(', '()<Left>', {})
vim.keymap.set('i', '[', '[]<Left>', {})
vim.keymap.set('i', '{', '{}<Left>', {})

--Sets mappings to toggle error diagnostics
-- vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle document_diagnostics<cr>", {silent = true, noremap = true})

--Toggle File Explorer Nvim-tree
vim.keymap.set("n", "<leader>ff", "<cmd>NvimTreeToggle<cr>", {silent = true, noremap = true})
