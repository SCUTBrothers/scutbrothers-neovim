-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local map = vim.keymap.set

-- motions
map("n", "H", "^", { desc = "move to line start" })
map("n", "L", "$", { desc = "move to line start" })

-- remap

-- buffers
--
map("n", "<S-J>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })
map("n", "<S-K>", "<cmd>bnext<cr>", { desc = "Next buffer" })

-- search file
--  search in  current directory
map("n", "<leader>d", function()
  require("telescope.builtin").find_files({
    cwd = vim.fn.expand("%:p:h"),
  }, { remap = false })
end)

-- vscode keymap
-- # UI
map("n", "<leader>e", "<cmd>lua require('vscode-neovim').action('workbench.view.explorer')<cr>",
  { desc = "Explorer", remap = false, silent = true })

map("n", "<leader>um", "<cmd>lua require('vscode-neovim').action('markdown-preview-enhanced.openPreviewToTheSide')<cr>",
  { desc = "Open Markdown Preview to the Side", remap = false, silent = true })
map("n", "<leader>ua", "<cmd>lua require('vscode-neovim').action('workbench.action.toggleActivityBarVisibility')<cr>",
  { desc = "Toggle Activity Bar Visibility", remap = false, silent = true })
map("n", "<leader>ue", "<cmd>lua require('vscode-neovim').action('workbench.action.toggleSidebarVisibility')<cr>",
  { desc = "Toggle Sidebar Visibility", remap = false, silent = true })
map("n", "<leader>uz", "<cmd>lua require('vscode-neovim').action('workbench.action.toggleZenMode')<cr>",
  { desc = "Toggle Zen Mode", remap = false, silent = true })
map("n", "<leader>up", "<cmd>lua require('vscode-neovim').action('workbench.view.extensions')<cr>",
  { desc = "View Extensions", remap = false, silent = true })
map("n", "<leader>uz", "<cmd>lua require('vscode-neovim').action('workbench.action.toggleZenMode')<cr>",
  { remap = false, silent = true, desc = "Toggle Zen Mode" })

-- # leader+key
map("n", "<leader>v", "<cmd>lua require('vscode-neovim').action('editor.toggleFold')<cr>",
  { desc = "Toggle Fold", remap = false, silent = true })
map("n", "<leader>o", "<cmd>lua require('vscode-neovim').action('workbench.action.quickOpen')<cr>",
  { desc = "Quick Open", remap = false, silent = true })
map("n", "<leader>j", "<cmd>lua require('vscode-neovim').action('bookmarks.jumpToNext')<cr>",
  { desc = "Jump to Next Bookmark", remap = false, silent = true })
map("n", "<leader>k", "<cmd>lua require('vscode-neovim').action('bookmarks.jumpToPrevious')<cr>",
  { desc = "Jump to Previous Bookmark", remap = false, silent = true })
map("n", "<leader>9", "<cmd>lua require('vscode-neovim').action('io.orta.jest.editor.workspace.run-all-tests')<cr>",
  { remap = false, silent = true, desc = "Run All Jest Tests" })
map("n", "<leader>;", "<cmd>lua require('vscode-neovim').action('workbench.action.showCommands')<cr>",
  { remap = false, silent = true, desc = "Show Commands" })
map("n", "<leader>r", "<cmd>lua require('vscode-neovim').action('workbench.action.tasks.reRunTask')<cr>",
  { remap = false, silent = true, desc = "Rerun Task" })
map("n", "<leader>a", "<cmd>lua require('vscode-neovim').action('chatgpt-vscode.view.focus')<cr>",
  { remap = false, silent = true, desc = "Focus ChatGPT View" })
map("n", "<leader>s", "<cmd>lua require('vscode-neovim').action('workbench.action.gotoSymbol')<cr>",
  { remap = false, silent = true, desc = "Go to Symbol" })
map("n", "<leader>t", "<cmd>lua require('vscode-neovim').action('editor.emmet.action.matchTag')<cr>",
  { remap = false, silent = true, desc = "Match Tag" })
map("n", "<leader>i", "eaI<esc>pbIfIx~h", { remap = true, silent = true })
map("n", "<leader>0", "<cmd>lua require('vscode-neovim').action('workbench.action.tasks.runTask')<cr>",
  { remap = false, silent = true, desc = "Run Task" })
map("n", "<leader>d", "<cmd>lua require('vscode-neovim').action('extension.showDirectoryFiles')<cr>",
  { remap = false, silent = true, desc = "Show Directory Files" })
map("n", "<leader>n", "<cmd>lua require('vscode-neovim').action('copyRelativeFilePath')<cr>",
  { remap = false, silent = true, desc = "Copy Relative File Path" })
map("n", "<leader>1", "<cmd>lua require('vscode-neovim').action('workbench.action.focusFirstEditorGroup')<cr>",
  { remap = false, silent = true, desc = "Focus First Editor Group" })
map("n", "<leader>2", "<cmd>lua require('vscode-neovim').action('workbench.action.focusSecondEditorGroup')<cr>",
  { remap = false, silent = true, desc = "Focus Second Editor Group" })

-- # leader+key+key
map("n", "<leader>mm", "<cmd>lua require('vscode-neovim').action('bookmarks.toggle')<cr>",
  { desc = "Toggle Bookmark", remap = false, silent = true })
map("n", "<leader>mh", "<cmd>lua require('vscode-neovim').action('workbench.action.moveEditorToLeftGroup')<cr>",
  { remap = false, silent = true, desc = "Move Editor to Left Group" })
map("n", "<leader>ml", "<cmd>lua require('vscode-neovim').action('workbench.action.moveEditorToRightGroup')<cr>",
  { remap = false, silent = true, desc = "Move Editor to Right Group" })
map("n", "<leader>bo",
  "<cmd>lua require('vscode-neovim').action('workbench.action.closeEditorsToTheLeft').action('workbench.action.closeEditorsToTheRight')<cr>",
  { remap = false, silent = true, desc = "Close Editors to the Left and Right" })
map("n", "<leader>bu", "<cmd>lua require('vscode-neovim').action('workbench.action.unpinEditor')<cr>",
  { remap = false, silent = true, desc = "Unpin Editor" })
map("n", "<leader>bp", "<cmd>lua require('vscode-neovim').action('workbench.action.pinEditor')<cr>",
  { remap = false, silent = true, desc = "Pin Editor" })
map("n", "<leader>bl", "<cmd>lua require('vscode-neovim').action('workbench.action.closeEditorsToTheLeft')<cr>",
  { remap = false, silent = true, desc = "Close Editors to the Left" })
map("n", "<leader>br", "<cmd>lua require('vscode-neovim').action('workbench.action.closeEditorsToTheRight')<cr>",
  { remap = false, silent = true, desc = "Close Editors to the Right" })
map("n", "<leader>gs", "<cmd>lua require('vscode-neovim').action('git.stash')<cr>",
  { remap = false, silent = true, desc = "Git Stash" })
map("n", "<leader>gu", "<cmd>lua require('vscode-neovim').action('git.stashPop')<cr>",
  { remap = false, silent = true, desc = "Git Stash Pop" })
map("n", "<leader>gb", "<cmd>lua require('vscode-neovim').action('git.branch')<cr>",
  { remap = false, silent = true, desc = "Git Branch" })
map("n", "<leader>gm", "<cmd>lua require('vscode-neovim').action('git.merge')<cr>",
  { remap = false, silent = true, desc = "Git Merge" })
map("n", "<leader>gd", "<cmd>lua require('vscode-neovim').action('git.cleanAll')<cr>",
  { remap = false, silent = true, desc = "Git Clean All" })
map("n", "<leader>cp", "<cmd>lua require('vscode-neovim').action('extension.changeCase.pascal')<cr>",
  { remap = false, silent = true, desc = "Change Case to Pascal" })

-- # keys
map("n", "z", "<cmd>lua require('vscode-neovim').action('workbench.panel.chat.view.copilot.focus')<cr>",
  { desc = "Focus on Copilot Chat Panel", remap = false, silent = true })
map("n", "gD", "<cmd>lua require('vscode-neovim').action('typescript.goToSourceDefinition')<cr>",
  { remap = false, silent = true, desc = "Go to Source Definition" })
map("n", "gc", "<cmd>lua require('vscode-neovim').action('inlineChat.start')<cr>",
  { remap = false, silent = true, desc = "Start Inline Chat" })
map("n", "\\c", "<cmd>lua require('vscode-neovim').action('remove-console-log.helloWorld')<cr>",
  { remap = false, silent = true, desc = "Remove Console Log" })
map("n", "gr",
  "<cmd>lua require('vscode-neovim').action('editor.action.referenceSearch.trigger').action('togglePeekWidgetFocus')<cr>",
  { remap = false, silent = true, desc = "Reference Search and Toggle Peek Widget Focus" })

-- # remap
map("n", "yL", "y$", { remap = true, silent = true })
map("n", "yH", "y^", { remap = true, silent = true })
map("n", "dL", "d$", { remap = true, silent = true })
map("n", "dH", "d^", { remap = true, silent = true })
map("n", "cig", "ci`", { remap = true, silent = true })
map("n", "dig", "di`", { remap = true, silent = true })
map("n", "dag", "da`", { remap = true, silent = true })
map("n", "yig", "yi`", { remap = true, silent = true })
map("n", "yag", "ya`", { remap = true, silent = true })
map("n", "d}", "da}", { remap = true, silent = true })
map("n", "d{", "di}", { remap = true, silent = true })
map("n", "d]", "da]", { remap = true, silent = true })
map("n", "d[", "di[", { remap = true, silent = true })
map("n", "d\"", "da\"", { remap = true, silent = true })
map("n", "d'", "da'", { remap = true, silent = true })
map("n", "\"", "ci\"", { remap = true, silent = true })
map("n", "'", "ci'", { remap = true, silent = true })
map("n", "]", "ci]", { remap = true, silent = true })
map("n", "[", "ci[", { remap = true, silent = true })
map("n", "}", "ci}", { remap = true, silent = true })
map("n", "{", "ci{", { remap = true, silent = true })
map("n", ",", "ci<", { remap = true, silent = true })
map("n", ";", "<cmd>lua require('vscode-neovim').action('workbench.action.showCommands')<cr>",
  { remap = false, silent = true, desc = "Open Quick Fix" })
map("n", "m", "<cmd>lua require('vscode-neovim').action('editor.action.quickFix')<cr>",
  { remap = false, silent = true, desc = "Open Quick Fix" })
map("n", "t", "<cmd>lua require('vscode-neovim').action('workbench.action.switchWindow')<cr>",
  { remap = false, silent = true, desc = "Switch Window" })
map("n", "s", "<leader><leader>s", { remap = true, silent = true })
map("n", "X", ":q<cr>", { remap = true, silent = true })
map("n", "J", "<cmd>lua require('vscode-neovim').action('workbench.action.previousEditor')<cr>",
  { remap = false, silent = true })
map("n", "K", "<cmd>lua require('vscode-neovim').action('workbench.action.nextEditor')<cr>",
  { remap = false, silent = true })
map("n", "H", "^", { remap = false, silent = true })
map("n", "L", "$", { remap = false, silent = true })
map("n", ">", "<cmd>lua require('vscode-neovim').action('editor.action.indentLines')<cr>",
  { remap = false, silent = true, desc = "Indent Lines" })
map("n", "<", "<cmd>lua require('vscode-neovim').action('editor.action.outdentLines')<cr>",
  { remap = false, silent = true, desc = "Outdent Lines" })
map("n", "gu", "~h", { remap = true, silent = true })
map("n", "-", "<cmd>lua require('vscode-neovim').action('editor.action.marker.next')<cr>",
  { remap = false, silent = true, desc = "Next Marker" })
