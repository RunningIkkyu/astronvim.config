return {
  {
    'Exafunction/codeium.vim',
    event = 'BufEnter',
    config = function ()
    -- Change '<C-f>' here to any keycode you like.
      vim.keymap.set('i', '<C-f>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
    end
  }
}
