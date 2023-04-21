terminal = require('nvim-terminal').DefaultTerminal;

local silent = { silent = true }

vim.api.nvim_set_keymap('n', '<C-t>', ':lua terminal:toggle()<cr>', silent)

local Terminal = require('nvim-terminal.terminal')
local Window = require('nvim-terminal.window')

local window = Window:new({
	position = 'botright',
	split = 'sp',
	width = 50,
	height = 15
})

terminal = Terminal:new(window)
