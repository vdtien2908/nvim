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
      theme = 'doom',
      config = {
        header = vim.split(logo, "\n"),
        center = {
          { icon = '  ',
            desc = 'Recent Files                            ',
            action =  'Telescope oldfiles',
            shortcut = 'SPC f r' },
          { icon = '  ',
            desc = 'New File                               ',
            action = 'DashboardNewFile',
            shortcut = 'SPC f n' },
          { icon = '  ',
            desc = 'File Browser                           ',
            action = 'Telescope file_browser',
            shortcut = 'SPC f b' },
          { icon = '  ',
            desc = 'Find Word                              ',
            action = 'Telescope live_grep',
            shortcut = 'SPC f w' },
      },
      }
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
