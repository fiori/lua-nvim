return {
	"nvim-telescope/telescope.nvim",

	dependencies = {
		'nvim-lua/plenary.nvim'
	},

	config = function ()
		require('telescope').setup({})

		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<leader>gf', builtin.git_files, { })
		vim.keymap.set('n', '<leader>ps', function()
			builtin.grep_string({ search = vim.fn.input("Grep > ")})
		end)

        -- Help
        vim.keymap.set('n', '<leader>ph', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })

        -- Buffers
        vim.keymap.set('n', '<leader>pb', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })

        -- Show all the telescope commands
        vim.api.nvim_set_keymap("n", "<Leader><tab>", "<Cmd>lua require('telescope.builtin').commands()<CR>", {noremap=false})

        vim.keymap.set('n', '<leader>/', function()
            -- You can pass additional configuration to telescope to change theme, layout, etc.
            require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
                winblend = 10,
                previewer = false,
            })
        end, { desc = '[/] Fuzzily search in current buffer]' })
	end
}

