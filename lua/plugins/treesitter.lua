require'nvim-treesitter.configs'.setup {
  highlight = { enable = true, },
  indent = { enable = true },
  context_commentstring = { enable = true },
  refactor = {
    highlight_definitions = { enable = true },
    highlight_current_scope = { enable = true },
    -- navigation = {
    --   enable = true,
    --   keymaps = {
    --     goto_definition = "gnd",
    --     list_definitions = "gnD",
    --     list_definitions_toc = "gO",
    --     goto_next_usage = "<a-*>",
    --     goto_previous_usage = "<a-#>",
    --   },
    -- },
    -- smart_rename = {
    --   enable = true,
    --   keymaps = {
    --     smart_rename = "grr",
    --   },
    -- },
  },
  textsubjects = {
    enable = true,
    keymaps = {
      ['<cr>'] = 'textsubjects-smart',
      [';'] = 'textsubjects-container-outer',
    }
  },
  textobjects = {
    swap = {
      enable = true,
      swap_next = {
        ['grn'] = "@parameter.inner",
      },
      swap_previous = {
        ['grp'] = "@parameter.inner",
      },
    },
    -- incremental_selection = {
    --   enable = true,
    --   keymaps = {
    --     init_selection = "gnn",
    --     node_incremental = "grn",
    --     scope_incremental = "grc",
    --     node_decremental = "grm",
    --   },
    -- },
    -- select = {
    --   enable = true,

    --   -- automatically jump forward to textobj, similar to targets.vim 
    --   lookahead = true,

    --   keymaps = {
    --     -- you can use the capture groups defined in textobjects.scm
    --     ["af"] = "@function.outer",
    --     ["if"] = "@function.inner",
    --     ["ac"] = "@class.outer",
    --     ["ic"] = "@class.inner",

    --     -- or you can define your own textobjects like this
    --     ["if"] = {
    --       python = "(function_definition) @function",
    --       cpp = "(function_definition) @function",
    --       c = "(function_definition) @function",
    --       java = "(method_declaration) @function",
    --     },
    --   },
    -- },
  },
}

