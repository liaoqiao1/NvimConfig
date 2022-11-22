require("nvim-lsp-installer").setup{}

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

local lspconfig = require("lspconfig")
local function on_attach(client, bufnr) -- set up buffer keymaps, etc.
  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gd', vim.lsp.buf.declaration, bufopts) -- 跳转道定义
  vim.keymap.set('n', 'gD', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts) -- 重命名函数
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
end

local lsp_flags = {
  debounce_text_changes = 100,
}

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- after local capabilities = ....
-- start server --启动语言服务器
    
-- lua
lspconfig.sumneko_lua.setup{
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = {"vim", "packer_bootstrap"},
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        enable = false,
      },
    },
  },
}


-- python
lspconfig.pyright.setup{
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        useLibraryCodeForTypes = true,
        typeCheckingMode = "off",
      }
    }
  },
}

-- java
lspconfig.jdtls.setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}
-- c/c++
lspconfig.clangd.setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}


-- vim
lspconfig.vimls.setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities,
}





-- after start lsp server config....
-- change info style of lsp
require("Lsp.handlers").setup()

