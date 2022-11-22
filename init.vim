lua require('1_set')
lua require('2_plug')
lua require('3_key')


lua require('PlugConfig/bufferline')
lua require('PlugConfig/treesitter')
lua require('PlugConfig/onedarkpro')
lua require('PlugConfig/dashboard')
lua require('PlugConfig/lualine')
lua require('PlugConfig/indent')
lua require('PlugConfig/nvimtree')
lua require('PlugConfig/markdown')
lua require('PlugConfig/ultisnips')

lua require('Lsp/cmp')
lua require('Lsp/lspinit')

autocmd InsertEnter *.java,*.py,*.c SemanticHighlight
autocmd InsertLeave *.java,*.py,*.c,*.md,*.txt,*.vim,*lua w


