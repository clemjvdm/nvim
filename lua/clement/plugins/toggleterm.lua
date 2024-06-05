return {
  'akinsho/toggleterm.nvim', version = "*", opts = {
    size = 20,
    hide_numbers = true,
    shade_filetypes = {},
  shade_terminals = true,
  shading_factor = '1',
  start_in_insert = true,
  insert_mappings = true,
  terminal_mappings = true,
  persist_size = true,
  direction = 'float',
  close_on_exit = true,
  shell = vim.o.shell,
  --[[float_opts = {
    border = 'single',
    width = 120,
    height = 50,
    winblend = 3,
    }
        ]]--
}
}
