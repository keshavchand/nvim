function goto_top_git()
	gitFound = false
	targetDir = vim.fn.getcwd()
	while targetDir ~= '/' do
		if vim.fn.isdirectory(targetDir .. "/.git") == 1 then
			gitFound = true
			break
		end
		targetDir = vim.fn.fnamemodify(targetDir, ":h")
	end

	if gitFound then
		vim.fn.chdir(targetDir)
	end
end

