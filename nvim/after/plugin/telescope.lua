
local telescope = require('telescope')
telescope.setup{
	pickers = {
		find_files = {
			find_command = {'rg', '--files', '--hidden', '-g', '!.git'},
		}
	}
}


local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})

vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})