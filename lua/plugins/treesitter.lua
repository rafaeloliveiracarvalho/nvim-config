 return { 
    "nvim-treesitter/nvim-treesitter", 
    build = ":tsupdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        --ensure_installed = {"bash", "clojure", "python", "javascript", "rust", "html", "css", "go"},
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  }

