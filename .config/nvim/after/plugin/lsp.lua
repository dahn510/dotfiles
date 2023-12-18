local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.ensure_installed({
    --List of available language servers
    --https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
    'bashls',
    'clangd',
    'cssls',
    'gopls',
    'html',
    'jsonls',
    'quick_lint_js',
    'tsserver',
    'lua_ls',
    'marksman',
})

lsp.set_sign_icons({
    error = '💩',
    warn = '🤡',
    hint = '🗿',
    info = '🧠',
})

vim.keymap.set('n', '<leader>f', vim.diagnostic.open_float)

lsp.setup()
