local set  =  vim.opt

set.tabstop = 2 
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.termguicolors = true

set.number = true                         -- Line numbers
set.relativenumber = true
set.wrap = false                              -- Display long lines as just one line
set.encoding = "utf-8"                      -- The encoding displayed
set.pumheight = 10                        -- Makes popup meNERDTreenu smaller
set.fileencoding = 'utf-8'                  -- The encoding written to file
set.ruler = true              			-- Show the cursor position all the time
set.mouse = 'a'                             -- Enable your mouse
set.splitbelow = true                          -- Horizontal splits will automatically be below
set.splitright = true                          -- Vertical splits will automatically be to the right
set.smartindent = true                         -- Makes indenting smart
set.autoindent = true                          -- Good auto indent
set.laststatus = 2                        -- Always display the status line
set.cursorline = true                          -- Enable highlighting of the current line
set.background = 'dark'                     -- tell vim what the background color looks like
set.backup = false                            -- This is recommended by coc
set.writebackup = false                       -- This is recommended by coc
set.signcolumn = "yes"                      -- Always show the signcolumn, otherwise it would shift the text each time
set.updatetime = 300                      -- Faster completion
set.timeoutlen = 300                      -- By default timeoutlen is 1000 ms

vim.cmd [[
	let g:lightline = {'colorscheme': 'catppuccin'}
]]
