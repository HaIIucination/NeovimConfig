return {
  {
    "lazy.nvim",
    opts = {
      colorscheme = "catppuccin",
    },

  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavor = "auto",
      background = { -- :h background
        light = "latte",
        dark = "mocha",
      },
      term_colors = true,
      transparent_background = false,
      styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
      },
      color_overrides = {
 latte = {
            rosewater = "#cc7983",
            flamingo = "#bb5d60",
            pink = "#d54597",
            mauve = "#a65fd5",
            red = "#b7242f",
            maroon = "#db3e68",
            peach = "#e46f2a",
            yellow = "#bc8705",
            green = "#1a8e32",
            teal = "#00a390",
            sky = "#089ec0",
            sapphire = "#0ea0a0",
            blue = "#017bca",
            lavender = "#8584f7",
            text = "#444444",
            subtext1 = "#555555",
            subtext0 = "#666666",
            overlay2 = "#777777",
            overlay1 = "#888888",
            overlay0 = "#999999",
            surface2 = "#aaaaaa",
            surface1 = "#bbbbbb",
            surface0 = "#cccccc",
            base = "#ffffff",
            mantle = "#eeeeee",
            crust = "#dddddd",
},      mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      },
      default_integrations = true,
      integrations = {
        telescope = {
          enabled = true,
          --style = "nvchad",
        },
        nvimtree = true,
 --       lualine = true,
        treesitter = true,
      },
    },
  },
  config = function()
    vim.cmd.colorscheme "catppuccin"
  end
}
