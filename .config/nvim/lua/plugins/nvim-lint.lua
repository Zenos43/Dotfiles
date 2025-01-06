-- General purpose linters
return {
  -- https://github.com/mfussenegger/nvim-lint
  'mfussenegger/nvim-lint',
  event = 'BufWritePost',
  config = function ()
    -- Define a table of linters for each filetype (not extension).
    -- Additional linters can be found here: https://github.com/mfussenegger/nvim-lint#available-linters
    require('lint').linters_by_ft = {
	  javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      typescriptreact = { "eslint_d" },
      svelte = { "eslint_d" },
      python = {
        'flake8',
        -- 'mypy',
        --'pylint',
      }
    }

    -- Automatically run linters after saving.  Use "InsertLeave" for more aggressive linting.
    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      -- Only run linter for the following extensions. Remove this to always run.
      pattern = { "*.py", },
      callback = function()
        require("lint").try_lint()
      end,
    })
	
	vim.keymap.set("n", "<leader>l", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })
  end,
}
