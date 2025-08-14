function ColorMyPencils(color)
	color = color or "rose-pine-moon"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })


    -- Yellow
    vim.api.nvim_set_hl(0, "@type.c_sharp", { fg = "#FFF08B" })
	vim.api.nvim_set_hl(0, "@lsp.type.class.cs", { fg = "#FFF08B" })
    -- green
    vim.api.nvim_set_hl(0, "@lsp.type.struct.cs", { fg = "#00FFAA" })
    -- white
    vim.api.nvim_set_hl(0, "@lsp.type.event.cs", { fg = "#FFFFFF" })
    vim.api.nvim_set_hl(0, "@lsp.type.fieldName.cs", { fg = "#FFFFFF" })
    vim.api.nvim_set_hl(0, "@variable.c_sharp", { fg = "#FFFFFF" })
    vim.api.nvim_set_hl(0, "@lsp.type.parameter.cs", { fg = "#FFFFFF" })
    -- purple
    vim.api.nvim_set_hl(0, "@lsp.type.interface.cs", { fg = "#FF00FF" })
end

return {
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				style = "storm",
				transparent = true,
				terminal_colors = true,
				styles = {
					comments = { italic = false },
					keywords = { italic = false },
					sidebars = "dark",
					floats = "dark",
				},
			})
		end
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require('rose-pine').setup({
				disable_background = true
			})

			ColorMyPencils()
		end
	}
}
