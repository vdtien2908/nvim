return {
	"rcarriga/nvim-notify",
	opts = {
		timeout = 2000,
	},
	config = function(_, opts)
		require("notify").setup(opts)
		vim.notify = require("notify")
		-- Thiết lập autocommand để hiển thị thông báo khi lưu file
		vim.api.nvim_create_autocmd("BufWritePost", {
			pattern = "*",
			callback = function()
				vim.notify("File saved successfully!", "info", {
					title = "Notification",
				})
			end,
		})
	end,
}
