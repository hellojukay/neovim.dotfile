require('formatter').setup({
  filetype = {
    javascript = {
      -- prettier
      function()
        return {
          exe = "prettier",
          args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--single-quote'},
          stdin = true
        }
      end
    },
    lua = {
        -- luafmt
        -- sudo npm install -g lua-fmt
        function()
          return {
            exe = "luafmt",
            args = {"--indent-count", 2, "--stdin"},
            stdin = true
          }
        end
    },
    python = {
      -- Configuration for psf/black
      function()
        return {
          exe = "black", -- this should be available on your $PATH
          args = { '-' },
          stdin = true,
        }
      end
    },
    go = {
        function()
            return {
                exe = "goimports",
                args = { '--' },
                stdin = true,
            }
        end
    },
    ocaml = {
        function()
            return {
                exe = "ocamlformat",
                args = {"--name tmp.ml --enable-outside-detected-project -"},
                stdin = true,
            }
        end
    },
    perl = {
        function()
            return {
                exe = "perltidy",
                args = {"-"},
                stdin = true,
            }
        end
    }
  }
  }
)
