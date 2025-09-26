vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- allows to move the selected code up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- puts the line bellow in the same line as the cursor
vim.keymap.set("n", "J", "mzJ`z")
-- half page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- this allows for when searching for text the cursor stays in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")


-- greatest remap ever
-- this remap is for pasting the yanked code without replacing the pasting buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- This allows you to copy text in the SystemClipboard
-- and when in visual mode or in this model +y you can do "ab" that yanks a full
-- paragraph
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- LeetCode
vim.keymap.set("n", "<leader>ll", "<cmd>Leet list<CR>")
vim.keymap.set("n", "<leader>lm", "<cmd>Leet menu<CR>")
vim.keymap.set("n", "<leader>lr", "<cmd>Leet run<CR>")
vim.keymap.set("n", "<leader>ls", "<cmd>Leet submit<CR>")
vim.keymap.set("n", "<leader>lt", "<cmd>Leet tabs<CR>")

-- build c and run
vim.keymap.set("n", "<leader>br", "<cmd>!gcc % -o output && ./output<CR>")
-- Compile & run current OCaml file with ocamlc
vim.keymap.set("n", "<leader>or", "<cmd>!ocamlc % -o output && ./output<CR>")


-- uses regex to replace the current word that the cursor is on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("v", "<leader>s", [[:s/foo/bar/g<Left><Left><Left><Left><Left><Left>]])

-- Set the current file to executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader>r", "<cmd>e<CR>", { silent = true })

vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)


vim.keymap.set("n", "<leader>w", "<cmd>:w<CR>zz")

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)


