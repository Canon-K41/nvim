-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { 
        "cssls", "html", "pyright", "clangd", "jsonls", 
        "rust_analyzer", "tsserver", "jdtls", "tailwindcss", "sqls" 
    },
    automatic_installation = true,
})

-- LSP servers setup
require('lspconfig').cssls.setup{}
require('lspconfig').html.setup{}
require('lspconfig').pyright.setup{}
require('lspconfig').clangd.setup{}
require('lspconfig').jsonls.setup{}
require('lspconfig').rust_analyzer.setup{}
require('lspconfig').tsserver.setup{}
require('lspconfig').jdtls.setup{}
require('lspconfig').tailwindcss.setup{}
require('lspconfig').sqls.setup{}
