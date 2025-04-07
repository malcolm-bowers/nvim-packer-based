require("telescope").load_extension("refactoring")
local refactoring = require('refactoring')
refactoring.setup({})

vim.keymap.set("x", "<leader>re", function() refactoring.refactor('Extract Function') end)
vim.keymap.set("x", "<leader>rf", function() refactoring.refactor('Extract Function To File') end)
-- Extract function supports only visual mode
vim.keymap.set("x", "<leader>rv", function() refactoring.refactor('Extract Variable') end)
-- Extract variable supports only visual mode
vim.keymap.set("n", "<leader>rif", function() refactoring.refactor('Inline Function') end)
-- Inline func supports only normal
vim.keymap.set({ "n", "x" }, "<leader>riv", function() refactoring.refactor('Inline Variable') end)
-- Inline var supports both normal and visual mode

vim.keymap.set("n", "<leader>rb", function() refactoring.refactor('Extract Block') end)
vim.keymap.set("n", "<leader>rbf", function() refactoring.refactor('Extract Block To File') end)
-- Extract block supports only normal mode

vim.keymap.set(
	{"n", "x"},
	"<leader>rr",
	function() require('telescope').extensions.refactoring.refactors() end
)
