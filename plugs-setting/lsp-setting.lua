-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup()


-- LSP servers setup
require('lspconfig').cssls.setup{}
require('lspconfig').html.setup{}
require('lspconfig').pyright.setup{}
require('lspconfig').clangd.setup{}
require('lspconfig').jsonls.setup{}
require('lspconfig').rust_analyzer.setup{}
require('lspconfig').tsserver.setup{}
require('lspconfig').jdtls.setup{}
