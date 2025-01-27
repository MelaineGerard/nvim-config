return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })
      lspconfig.solargraph.setup({
        capabilities = capabilities,
      })
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })

      lspconfig.dartls.setup({
        capabilities = capabilities,
      })

      lspconfig.phpactor.setup({
        capabilities = capabilities,
      })

      lspconfig.twiggy_language_server.setup({
        capabilities = capabilities,
      })

      lspconfig.volar.setup({
        capabilities = capabilities,
      })

      lspconfig.vimls.setup({
        capabilities = capabilities,
      })

      lspconfig.yamlls.setup({
        capabilities = capabilities,
      })

      lspconfig.sqlls.setup({
        capabilities = capabilities,
      })

      lspconfig.jsonls.setup({
        capabilities = capabilities,
      })

      lspconfig.cssls.setup({
        capabilities = capabilities,
      })

      lspconfig.bashls.setup({
        capabilities = capabilities,
      })

      lspconfig.dockerls.setup({
        capabilities = capabilities,
      })

      lspconfig.docker_compose_language_service.setup({
        capabilities = capabilities,
      })

      lspconfig.emmet_ls.setup({
        capabilities = capabilities,
      })

      lspconfig.intelephense.setup({
        capabilities = capabilities,
      })

      lspconfig.stimulus_ls.setup({
        capabilities = capabilities,
      })


      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
    end,
  },
}
