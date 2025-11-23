-- lua/plugins/visual-columns.lua
return {
  {
    'lukas-reineke/virt-column.nvim',
    opts = {
      char = '│',
      virtcolumn = '80',
      exclude = {
        filetypes = {
          'help'
        }
      }
    },
    config = function()
      local vc = require('virt-column')

      local function update_virtcolumn()
        local tw = vim.bo.textwidth
        if tw and 0 < tw then
          local warning_column = tw + 20
          vc.update({
            virtcolumn = tw .. ',' .. warning_column,
          })
        end
      end

      vim.api.nvim_create_autocmd({
        'BufEnter',
        'BufNewFile',
        'BufReadPost',
        'FileType'
      }, {
        callback = update_virtcolumn
      })
    end
  }
}