local determine_neo_tree_action = function(type)
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    local filetype = vim.api.nvim_buf_get_option(buf, "filetype")
    if filetype == type then
      return { action="close" }
    end
  end
  return { action="focus", reveal=true, position="left"}
end

local toggle_neotree = function()
  local neo_tree_action = determine_neo_tree_action("neo-tree")

  require("neo-tree.command").execute(neo_tree_action)
end

return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "muniftanjim/nui.nvim",
    },

    config = function()
      vim.keymap.set('n', '<C-b>', toggle_neotree, {})
    end
  }

