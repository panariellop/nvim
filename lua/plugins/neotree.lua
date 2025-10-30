return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    keys = {
	    {"<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle neotree" }
    },
    opts = {
      window = {
        position = "float",
        popup = {
          size = {
            height = "80%",
            width = "50%",
          },
          position = "50%", -- 50% means center
        },
      },
    },
  }
}
