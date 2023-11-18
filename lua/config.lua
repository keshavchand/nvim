require('funcs')

-- Setup tabwidth
vim.o.tabstop = 2	
vim.o.shiftwidth = 2
vim.o.autoindent = true
vim.o.smarttab = true
vim.o.autochdir = true
vim.o.lazyredraw = true
vim.o.cursorline = true

-- autocmd
vim.api.nvim_create_autocmd('BufEnter',  {
	pattern = '*',
	callback = function()
		local buftype = vim.bo.buftype
		if buftype ~= '' then
			return
		end

		goto_top_git()
	end
	}
)

