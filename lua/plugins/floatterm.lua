return {
  {
    'EmilOhlsson/FloatTerm.nvim',
    config = function()

	local float_term = require('FloatTerm')
	float_term.setup({
	    window_config = {
		border = 'shadow',
		title = 'FloatTerm',
		title_pos = 'left',
	    },
	    pad_vertical = 5,
	    pad_horizontal = 10,
	})
      -- Keybindings
      vim.keymap.set('n', '<leader>ft', float_term.toggle_window, {
	    noremap = true,
	    desc = 'Toggle floating terminal',
	})
    end,
  },
}
