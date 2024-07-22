return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
			require("tokyonight").setup({
					style = "storm", -- hoặc "night" hoặc "day"
					transparent = true, -- Bật nền trong suốt
					terminal_colors = true, -- Áp dụng màu trong terminal Neovim
					styles = {
							sidebars = "transparent", -- Làm trong suốt các thanh bên
							floats = "transparent", -- Làm trong suốt các cửa sổ nổi
					},
			})
			vim.cmd.colorscheme("tokyonight-storm")
	end,
}