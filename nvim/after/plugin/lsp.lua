local lsp = require('lsp-zero')
local coq = require "coq"

lsp.preset('recommended')
lsp.setup(coq.lsp_ensure_capabilities())
