local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {'rust_analyzer', 'pylsp'},
	handlers = {
		lsp_zero.default_setup,
		pylsp = function() 
			print ("HELLO")
			local lspconfig = require('lspconfig')
			lspconfig.pylsp.setup({
				settings = {
					pylsp = {
						plugins = {
							black = {enabled = true},
							pycodestyle = {enabled = false},
							mccabe = {enabled = false},
							pyflakes = {enabled = false},
							yapf = {enabled = false},
							autopep8 = {enabled = false},
						}
					}
				}
			})
		end
	},
})
