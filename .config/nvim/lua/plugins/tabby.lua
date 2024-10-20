return {
	"nanozuki/tabby.nvim",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("tabby").setup({
			preset = "tab_only",
			option = {
				nerdfont = true, -- whether use nerdfont
				lualine_theme = "auto", -- lualine theme name
			},
		})
	end,
}
