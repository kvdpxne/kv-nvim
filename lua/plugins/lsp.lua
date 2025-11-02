return {
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig"
    },
    opts = {
      ensure_installed = {
        "lua_ls",
      },
      auto_install = true
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local config = require('lspconfig')
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Lua
      config.lua_ls.setup({
        capabilities = capabilities
      })

      -- HTML
      config.html.setup({
        capabilities = capabilities
      })

      -- Emmet
      config.emmet_ls.setup({
        capabilities = capabilities,
        filetypes = {
          'html',
          'javascript',
          'javascriptreact',
          'typescript',
          'typescriptreact',
          'php',
          'blade'
        }
      })

      -- TypeScript/JavaScript
      config.ts_ls.setup({
        capabilities = capabilities
      })

      -- CSS
      config.cssls.setup({
        capabilities = capabilities
      })

      config.intelphense.setup({
        capabilities = capabilities,
        settings = {
          intelphense = {
            files = {
              maxSize = 5000000
            },
            environment = {
              includePaths = {
                "vendor"
              }
            }
          }
        }
      })
    end
  }
}
