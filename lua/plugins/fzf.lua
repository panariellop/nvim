return {
  {
    'ibhagwan/fzf-lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local fzf = require('fzf-lua')
      
      fzf.setup({
        winopts = {
          height = 0.85,
          width = 0.80,
          preview = {
            layout = 'vertical',
            vertical = 'down:45%',
          },
        },
      })

      -- Keybindings
      vim.keymap.set('n', '<C-p>', fzf.files, { desc = 'Find files' })
      vim.keymap.set('n', '<C-f>', fzf.live_grep, { desc = 'Live grep' })
      vim.keymap.set('n', '<leader>fb', fzf.buffers, { desc = 'Find buffers' })
      vim.keymap.set('n', '<leader>fh', fzf.help_tags, { desc = 'Help tags' })
      vim.keymap.set('n', '<leader>fr', fzf.oldfiles, { desc = 'Recent files' })
      vim.keymap.set('n', '<leader>fc', fzf.commands, { desc = 'Commands' })
      vim.keymap.set('n', '<leader>fk', fzf.keymaps, { desc = 'Keymaps' })
    end,
  },
}
