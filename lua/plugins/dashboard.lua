return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    local dashboard = require('dashboard')

    -- Logo
    local logo = [[        
        ██████╗ ███████╗██╗   ██╗      ██████╗ ██╗  ██╗██████╗ 
        ██╔══██╗██╔════╝██║   ██║      ╚════██╗██║ ██╔╝╚════██╗
        ██║  ██║█████╗  ██║   ██║█████╗ █████╔╝█████╔╝  █████╔╝
        ██║  ██║██╔══╝  ╚██╗ ██╔╝╚════╝██╔═══╝ ██╔═██╗ ██╔═══╝ 
        ██████╔╝███████╗ ╚████╔╝       ███████╗██║  ██╗███████╗
        ╚═════╝ ╚══════╝  ╚═══╝        ╚══════╝╚═╝  ╚═╝╚══════╝
    ]]

    logo = string.rep("\n", 8) .. logo .. "\n\n"

    dashboard.setup {
      config = {
        header = vim.split(logo, "\n"),
      }
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
