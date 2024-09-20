vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true


-- use space for tabs and whatnot 

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true


--C++ compilation keymap
function compile_and_run_c()
  local filename = vim.fn.expand('%:p')
  local output = vim.fn.fnamemodify(filename, ':r') .. '.exe'

  local compile_cmd = string.format('g++ -std=c++17 "%s" -o "%s"', filename, output)
  local run_cmd = string.format('"%s"', output)

  vim.cmd("vsplit | term")
  
  vim.fn.chansend(vim.b.terminal_job_id, compile_cmd .. "\n")
  vim.fn.chansend(vim.b.terminal_job_id, run_cmd .. "\n")
end

vim.api.nvim_set_keymap('n', '<C-r>', ':lua compile_and_run_c()<CR>', { noremap = true, silent = true })
