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
