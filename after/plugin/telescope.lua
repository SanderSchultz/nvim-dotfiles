local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')

-- Custom action to open files in a new terminal session
local open_in_new_terminal = function(prompt_bufnr)
    local selection = action_state.get_selected_entry()
    local filepath = selection.path
    -- Adjust the terminal command according to your setup
    local cmd = string.format("konsole -e nvim '%s' &", filepath)
    actions.close(prompt_bufnr)
    -- vim.cmd(string.format('!%s', cmd))
    vim.fn.system(cmd)
end

-- Set up your mappings and include the custom action for Ctrl + V
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ["<C-v>"] = open_in_new_terminal, -- Insert mode
      },
      n = {
        ["<C-v>"] = open_in_new_terminal, -- Normal mode
      },
    },
  },
}

local builtin = require('telescope.builtin')

--Opens fuzzy finder for files in the same folder that was opened
vim.keymap.set('n', '<C-x>', builtin.find_files, {})

--Opens fuzzy finder for files related to Git
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

--Grep search for string in all files in same folder that was opened
vim.keymap.set('n', '<leader>ps', function()

	builtin.grep_string({ search = vim.fn.input("Grep > ")});

end)

--Searches for string in current buffer
vim.keymap.set('n', '/', function()

    builtin.current_buffer_fuzzy_find(require('telescope.themes').get_ivy {
        windblend = 20,
        previewer = false,
    })

end, {desc = 'Search in current buffer'})
