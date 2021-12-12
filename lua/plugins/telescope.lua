-- Mapping to toggle preview window
local action_layout = require('telescope.actions.layout')
local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')

-- function fzf_multi_select(prompt_bufnr)
--   local picker = action_state.get_current_picker(prompt_bufnr)
--   local num_selections = table.getn(picker:get_multi_selection())

--   if num_selections > 1 then
--     local picker = action_state.get_current_picker(prompt_bufnr)
--     for _, entry in ipairs(picker:get_multi_selection()) do
--       vim.cmd(string.format("%s %s", ":e!", entry.value))
--     end
--     vim.cmd('stopinsert')
--   else
--     actions.file_edit(prompt_bufnr)
--   end
-- end

require('telescope').setup{
  defaults = {
    layout_config = {
      prompt_position = 'top',
    },
    mappings = {
      n = {
        ['w'] = action_layout.toggle_preview,
        ['<M-a>'] = actions.toggle_all,
        -- ['<cr>'] = fzf_multi_select,
      },
      i = {
        ['<C-w>'] = action_layout.toggle_preview,
        ['<M-a>'] = actions.toggle_all,
        -- ['<cr>'] = fzf_multi_select,
      },
    },
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--fixed-strings",
      "--trim"
    }
  },
  pickers = {
    buffers = {
      mappings = {
        i = {
          ['<C-d>'] = actions.delete_buffer + actions.move_to_top,
        },
      },
    },
  },
  extensions = {
    project = {
      base_dirs = {
        '~/Desktop/git',
      },
      max_depth = 3
    },
  },
}

require('telescope').load_extension('fzf')
require('telescope').load_extension('project')

-- Live grep with disabled preview window
function _G.live_grep()
  require('telescope.builtin').live_grep({
    previewer = false,
  })
end
