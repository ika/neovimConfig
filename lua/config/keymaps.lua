vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "File Manager" })

vim.keymap.set("n", "gl", function()
  vim.diagnostic.open_float()
end, { desc = "Diagnostics" })

vim.keymap.set("n", "<leader>cf", function()
  require("conform").format({
    lsp_format = "fallback",
  })
end, { desc = "Format code" })

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-left>", "<C-w><C-h>", { desc = "Focus left window" })
vim.keymap.set("n", "<C-right>", "<C-w><C-l>", { desc = "Focus right window" })
vim.keymap.set("n", "<C-down>", "<C-w><C-j>", { desc = "Focus lower window" })
vim.keymap.set("n", "<C-up>", "<C-w><C-k>", { desc = "Focus upper window" })

-- NOTE: Some terminals have coliding keymaps or are not able to send distinct keycodes
vim.keymap.set("n", "<C-S-left>", "<C-w>H", { desc = "Move window to the left" })
vim.keymap.set("n", "<C-S-right>", "<C-w>L", { desc = "Move window to the right" })
vim.keymap.set("n", "<C-S-down>", "<C-w>J", { desc = "Move window to the lower" })
vim.keymap.set("n", "<C-S-up>", "<C-w>K", { desc = "Move window to the upper" })

-- Copilot keymaps
--
vim.keymap.set(
  "n",
  "<leader>co",
  ":CopilotChatOpen<CR>",
  { noremap = true, silent = true },
  { desc = "Open Copilot Chat" }
)

vim.keymap.set(
  "n",
  "<leader>cc",
  ":CopilotChatClose<CR>",
  { noremap = true, silent = true },
  { desc = "Close Copilot Chat" }
)

vim.keymap.set(
  "n",
  "<leader>ct",
  ":CopilotChatToggle<CR>",
  { noremap = true, silent = true },
  { desc = "Toggle Copilot Chat" }
)

vim.keymap.set(
  "n",
  "<leader>cl",
  ":CopilotChatLoad<CR>",
  { noremap = true, silent = true },
  { desc = "Load Copilot Chat" }
)
