local cwd = vim.fn.getcwd()

describe("actiontest", function()
  local assert_eq = assert.is_equal
  local assert_true = assert.is_true
  local assert_false = assert.is_false

  before_each(function()
    vim.api.nvim_command("cd " .. cwd)
  end)

  local github_actions = os.getenv("GITHUB_ACTIONS") == "true"

  local function make_default_context()
    return {
      bufnr = vim.api.nvim_get_current_buf(),
      winnr = vim.api.nvim_get_current_win(),
      tabnr = vim.api.nvim_get_current_tabpage(),
    }
  end

  local actiontest = require("actiontest")
  describe("[setup]", function()
    it("test", function()
      actiontest.setup()
    end)
  end)
end)
