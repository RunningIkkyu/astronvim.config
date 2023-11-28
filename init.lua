return {
  lsp = {
    mappings = {
      n = {
        -- this mapping will only be set in buffers with an LSP attached
        K = { function() vim.lsp.buf.hover() end, desc = "Hover symbol details" },
      },
    },
  },
  mappings = {
    -- first key is the mode
    n = {
      -- second key is the lefthand side of the map
      -- mappings seen under group name "Buffer"
      ["<tab>"] = { "<cmd>bdelete<cr>", desc = "Close tab" },
      -- tables with the `name` key will be registered with which-key if it's installed
      -- this is useful for naming menus
      ["<leader>b"] = { name = "Buffers" },
      -- quick save
      ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
      -- Swith buffer
      ["<S-Tab>"] = { "<cmd>:bprevious<cr>", desc = "Previous tab" },
      ["<Tab>"] = { "<cmd>:bnext<cr>", desc = "Next tab" },
    },
    t = {
      -- setting a mapping to false will disable it
      -- ["<esc>"] = false,
    },
  },
}
