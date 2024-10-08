  local lsp_zero = require('lsp-zero')

  vim.lsp.set_log_level("debug")
  lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({buffer = bufnr})
  end)

  require('mason').setup({})
  require('mason-lspconfig').setup({
    -- Replace the language servers listed here 
    -- with the ones you want to install
    ensure_installed = {'solargraph'},
    handlers = {
      require'lspconfig'.lua_ls.setup{},
      require'lspconfig'.solargraph.setup{},
      require'lspconfig'.html.setup{},
      require'lspconfig'.lwc_ls.setup{},
    },

  })


  local lsp_attach = function(client, bufnr)
    local opts = {buffer = bufnr}

    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
  end

  lsp_zero.extend_lspconfig({
    sign_text = true,
    lsp_attach = lsp_attach,
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
  })

  require('luasnip.loaders.from_vscode').lazy_load()
  local cmp = require('cmp')

  cmp.setup({
    sources = {
      {name = 'nvim_lsp'},
      {name = 'luasnip'},
    },
    snippet = {
      expand = function(args)
        -- You need Neovim v0.10 to use vim.snippet
        require'luasnip'.lsp_expand(args.body)
      end,
    },
    mapping = cmp.mapping.preset.insert({}),
  })

