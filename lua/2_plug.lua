return require('packer').startup(function()
-- ====================================
-- +          基本配置项              +
-- ====================================
    use "wbthomason/packer.nvim"                                   -- 包管理器 
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
    }                                                              -- 目录树
    use "jiangmiao/auto-pairs"                                     -- 自动括号补全
    use "lukas-reineke/indent-blankline.nvim"                      -- 缩进线
    use "p00f/nvim-ts-rainbow"                                     -- 彩色括号
    use "glepnir/dashboard-nvim"                                   -- 起始页
    use "olimorris/onedarkpro.nvim"                                -- one主题
    use "morhetz/gruvbox"                                          -- gruvbox主题
    use {"akinsho/bufferline.nvim", tag = "v3.*",
        requires = "kyazdani42/nvim-web-devicons"}                 -- 标签页
    use {'nvim-treesitter/nvim-treesitter'}
    use { "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }                                                              -- 底栏
    use {
        "nvim-telescope/telescope.nvim", tag = "0.1.0",
        requires = { {"nvim-lua/plenary.nvim"} }
    }                                                              -- 文件搜索插件

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })                                                             --markdown实时预览   
    use "jaxbot/semantic-highlight.vim"                            --代码颜色

-- +==================================+
-- |        lsp服务器与cmp补全        |
-- +==================================+
    use "williamboman/nvim-lsp-installer"
    use "neovim/nvim-lspconfig"

    -- nvim-cmp与cmp-nvim-lsp最重要
    use "hrsh7th/cmp-nvim-lsp" -- { name = nvim_lsp } 
    use "hrsh7th/cmp-buffer"   -- { name = 'buffer' } buffer补全
    use "hrsh7th/cmp-path"     -- { name = 'path' }   路径补全
    use "hrsh7th/cmp-cmdline"  -- { name = 'cmdline' }
    use "hrsh7th/nvim-cmp"
    -- 自定义代码片段 
    use 'SirVer/ultisnips'
    use 'quangnguyen30192/cmp-nvim-ultisnips'
end)




