require('nvim-tree').setup {
     git = {
        enable = true,
        ignore = true,
      },
      view = {
        width = 30,
        height = 30,
        side = 'left',
        number = false,
        relativenumber = false,
    	signcolumn = "yes",
        mappings = {
          custom_only = false,
          list = {},
        }
      }
}
