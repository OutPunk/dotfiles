return {
  {
    "projekt0n/github-nvim-theme",

    lazy = false,
    priority = 1000,

    config = function()
      require("github-theme").setup({})
      vim.cmd("colorscheme github_dark_dimmed")
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end,
  },

  {
    "f-person/auto-dark-mode.nvim",

    config = {
      update_interval = 1000,

      set_dark_mode = function()
        vim.api.nvim_set_option("background", "dark")
        vim.cmd("colorscheme github_dark_dimmed")
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      end,

      set_light_mode = function()
        vim.api.nvim_set_option("background", "light")
        vim.cmd("colorscheme github_light_default")
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      end,
    },
  },

  {
    "xiyaowong/transparent.nvim",
    config = function()
      require("transparent").setup({
        extra_groups = {
          "NeoTreeNormal",
          "NeoTreeNormalNC",
          "NormalFloat",
        },
      })
    end,
  },
}
