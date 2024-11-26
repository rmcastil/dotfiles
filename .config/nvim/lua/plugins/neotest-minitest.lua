return {
  "nvim-neotest/neotest",
  lazy = true,
  dependencies = {
    "zidhuss/neotest-minitest",
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-minitest")
      },
    })
  end
}
