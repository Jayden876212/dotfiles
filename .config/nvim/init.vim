" lua print(package.path)
" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn
" Set cursorcolumn colour
highlight CursorColumn ctermbg=black

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" Text wrapping should be disabled by default (except for languages like C
" where I want that kind of functionality)
set nowrap


autocmd FileType c,cpp,h call C_settings()

function! C_settings()
  setlocal tabstop=4
  setlocal shiftwidth=4
  setlocal expandtab

  " Set a 100 character limit
  setlocal wrap
  setlocal colorcolumn=100
  setlocal textwidth=100
endfunction

au BufNewFile,BufRead *.py set tabstop=4 shiftwidth=4 expandtab wrap colorcolumn=100 textwidth=100

" Enable Relative Line Numbers
set relativenumber

" hi Comment cterm=italic guifg=#2B2D31
" autocmd ColorScheme * highlight Comment cterm=italic guifg=#2B2D31

" There are certain files that we would never want to edit with Vim.
" " Wildmenu will ignore files with these extensions.
" set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
	     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif


set foldmethod=manual

let g:airline_theme='base16_nord'
let g:airline_powerline_fonts = 1

let g:suda_smart_edit = 1
let g:suda#noninteractive = 1

call plug#begin() 
Plug 'EdenEast/nightfox.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'tmsvg/pear-tree'
Plug 'https://github.com/elkowar/yuck.vim'
Plug 'https://github.com/theRealCarneiro/hyprland-vim-syntax'
Plug 'https://github.com/gentoo/gentoo-syntax'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'https://github.com/MunifTanjim/nui.nvim'
Plug 'hood/popui.nvim'
Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
Plug 'romgrk/barbar.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ibhagwan/fzf-lua'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'epwalsh/obsidian.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
Plug 'lambdalisue/vim-suda'
call plug#end()


function! FixColorscheme() " {{{
    if has("gui_running")
        if (g:colors_name =~ "nordfox")
            hi Folded        guibg=#00000000 guifg=#00000000 gui=none
            hi CursorLine    guibg=#00000000 ctermbg=Black cterm=none
            hi Normal    guibg=#00000000 ctermbg=Black cterm=none
            hi NonText    guibg=#00000000 ctermbg=Black cterm=none

            "hi Folded         ctermbg=234  ctermfg=25    cterm=none
        endif
    elseif &t_Co == 256
        if (g:colors_name =~ "nordfox")
            hi Folded        guibg=#00000000 guifg=#00000000 gui=none
            hi CursorLine    guibg=#00000000 ctermbg=Black cterm=none
            hi Normal    guibg=#00000000 ctermbg=Black cterm=none
            hi NonText    guibg=#00000000 ctermbg=Black cterm=none

        "else
            "hi CursorLine     ctermbg=0                  cterm=none
        endif
    endif
    endfunction
" }}}

augroup mycolorschemes
	au!
	au ColorScheme * call FixColorscheme()
augroup END

"autocmd ColorScheme * highlight Normal guibg=None
"autocmd ColorScheme * highlight NonText guibg=None

colorscheme nordfox

set completeopt=menu,menuone,noselect

lua <<EOF

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'html',
  callback = function(args)
  vim.lsp.start({
  name = 'HTML',
  cmd = {'/usr/bin/node', '/home/tdljayden/.config/coc/extensions/node_modules/coc-html/lib/server.js', '--stdio'},
  })
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'c',
  callback = function(args)
  vim.lsp.start({
  name = 'C and C++',
  cmd = {'/usr/lib/llvm/18/bin/clangd'},
  })
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'py',
  callback = function(args)
  vim.lsp.start({
  name = 'Ruff',
  cmd = {'/usr/bin/ruff', 'server'},
  })
  end,
})

-- Set up nvim-cmp.
local cmp = require'cmp'

cmp.setup({
snippet = {
-- REQUIRED - you must specify a snippet engine
expand = function(args)
vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
-- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
end,
},
window = {
-- completion = cmp.config.window.bordered(),
-- documentation = cmp.config.window.bordered(),
},
mapping = cmp.mapping.preset.insert({
['<C-b>'] = cmp.mapping.scroll_docs(-4),
['<C-f>'] = cmp.mapping.scroll_docs(4),
['<C-Space>'] = cmp.mapping.complete(),
['<C-e>'] = cmp.mapping.abort(),
['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
}),
sources = cmp.config.sources({
{ name = 'nvim_lsp' },
{ name = 'vsnip' }, -- For vsnip users.
-- { name = 'luasnip' }, -- For luasnip users.
-- { name = 'ultisnips' }, -- For ultisnips users.
-- { name = 'snippy' }, -- For snippy users.
}, {
{ name = 'buffer' },
})
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
sources = cmp.config.sources({
{ name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
}, {
{ name = 'buffer' },
})
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
mapping = cmp.mapping.preset.cmdline(),
sources = {
{ name = 'buffer' }
}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
mapping = cmp.mapping.preset.cmdline(),
sources = cmp.config.sources({
{ name = 'path' }
}, {
{ name = 'cmdline' }
})
})

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()




--
-- This function has been generated from your
--   view.mappings.list
--   view.mappings.custom_only
--   remove_keymaps
--
-- You should add this function to your configuration and set on_attach = on_attach in the nvim-tree setup call.
--
-- Although care was taken to ensure correctness and completeness, your review is required.
--
-- Please check for the following issues in auto generated content:
--   "Mappings removed" is as you expect
--   "Mappings migrated" are correct
--
-- Please see https://github.com/nvim-tree/nvim-tree.lua/wiki/Migrating-To-on_attach for assistance in migrating.
--

local function on_attach(bufnr)
local api = require('nvim-tree.api')

local function opts(desc)
return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
end


-- Default mappings. Feel free to modify or remove as you wish.
--
-- BEGIN_DEFAULT_ON_ATTACH
vim.keymap.set('n', '<C-]>', api.tree.change_root_to_node,          opts('CD'))
vim.keymap.set('n', '<C-e>', api.node.open.replace_tree_buffer,     opts('Open: In Place'))
vim.keymap.set('n', '<C-k>', api.node.show_info_popup,              opts('Info'))
vim.keymap.set('n', '<C-r>', api.fs.rename_sub,                     opts('Rename: Omit Filename'))
vim.keymap.set('n', '<C-t>', api.node.open.tab,                     opts('Open: New Tab'))
vim.keymap.set('n', '<C-v>', api.node.open.vertical,                opts('Open: Vertical Split'))
vim.keymap.set('n', '<C-x>', api.node.open.horizontal,              opts('Open: Horizontal Split'))
vim.keymap.set('n', '<BS>',  api.node.navigate.parent_close,        opts('Close Directory'))
vim.keymap.set('n', '<CR>',  api.node.open.edit,                    opts('Open'))
vim.keymap.set('n', '<Tab>', api.node.open.preview,                 opts('Open Preview'))
vim.keymap.set('n', '>',     api.node.navigate.sibling.next,        opts('Next Sibling'))
vim.keymap.set('n', '<',     api.node.navigate.sibling.prev,        opts('Previous Sibling'))
vim.keymap.set('n', '.',     api.node.run.cmd,                      opts('Run Command'))
vim.keymap.set('n', '-',     api.tree.change_root_to_parent,        opts('Up'))
vim.keymap.set('n', 'a',     api.fs.create,                         opts('Create'))
vim.keymap.set('n', 'bd',    api.marks.bulk.delete,                 opts('Delete Bookmarked'))
vim.keymap.set('n', 'bmv',   api.marks.bulk.move,                   opts('Move Bookmarked'))
vim.keymap.set('n', 'B',     api.tree.toggle_no_buffer_filter,      opts('Toggle No Buffer'))
vim.keymap.set('n', 'c',     api.fs.copy.node,                      opts('Copy'))
vim.keymap.set('n', 'C',     api.tree.toggle_git_clean_filter,      opts('Toggle Git Clean'))
vim.keymap.set('n', '[c',    api.node.navigate.git.prev,            opts('Prev Git'))
vim.keymap.set('n', ']c',    api.node.navigate.git.next,            opts('Next Git'))
vim.keymap.set('n', 'd',     api.fs.remove,                         opts('Delete'))
vim.keymap.set('n', 'D',     api.fs.trash,                          opts('Trash'))
vim.keymap.set('n', 'E',     api.tree.expand_all,                   opts('Expand All'))
vim.keymap.set('n', 'e',     api.fs.rename_basename,                opts('Rename: Basename'))
vim.keymap.set('n', ']e',    api.node.navigate.diagnostics.next,    opts('Next Diagnostic'))
vim.keymap.set('n', '[e',    api.node.navigate.diagnostics.prev,    opts('Prev Diagnostic'))
vim.keymap.set('n', 'F',     api.live_filter.clear,                 opts('Clean Filter'))
vim.keymap.set('n', 'f',     api.live_filter.start,                 opts('Filter'))
vim.keymap.set('n', 'g?',    api.tree.toggle_help,                  opts('Help'))
vim.keymap.set('n', 'gy',    api.fs.copy.absolute_path,             opts('Copy Absolute Path'))
vim.keymap.set('n', 'H',     api.tree.toggle_hidden_filter,         opts('Toggle Dotfiles'))
vim.keymap.set('n', 'I',     api.tree.toggle_gitignore_filter,      opts('Toggle Git Ignore'))
vim.keymap.set('n', 'J',     api.node.navigate.sibling.last,        opts('Last Sibling'))
vim.keymap.set('n', 'K',     api.node.navigate.sibling.first,       opts('First Sibling'))
vim.keymap.set('n', 'm',     api.marks.toggle,                      opts('Toggle Bookmark'))
vim.keymap.set('n', 'o',     api.node.open.edit,                    opts('Open'))
vim.keymap.set('n', 'O',     api.node.open.no_window_picker,        opts('Open: No Window Picker'))
vim.keymap.set('n', 'p',     api.fs.paste,                          opts('Paste'))
vim.keymap.set('n', 'P',     api.node.navigate.parent,              opts('Parent Directory'))
vim.keymap.set('n', 'q',     api.tree.close,                        opts('Close'))
vim.keymap.set('n', 'r',     api.fs.rename,                         opts('Rename'))
vim.keymap.set('n', 'R',     api.tree.reload,                       opts('Refresh'))
vim.keymap.set('n', 's',     api.node.run.system,                   opts('Run System'))
vim.keymap.set('n', 'S',     api.tree.search_node,                  opts('Search'))
vim.keymap.set('n', 'U',     api.tree.toggle_custom_filter,         opts('Toggle Hidden'))
vim.keymap.set('n', 'W',     api.tree.collapse_all,                 opts('Collapse'))
vim.keymap.set('n', 'x',     api.fs.cut,                            opts('Cut'))
vim.keymap.set('n', 'y',     api.fs.copy.filename,                  opts('Copy Name'))
vim.keymap.set('n', 'Y',     api.fs.copy.relative_path,             opts('Copy Relative Path'))
vim.keymap.set('n', '<2-LeftMouse>',  api.node.open.edit,           opts('Open'))
vim.keymap.set('n', '<2-RightMouse>', api.tree.change_root_to_node, opts('CD'))
-- END_DEFAULT_ON_ATTACH


-- Mappings migrated from view.mappings.list
--
-- You will need to insert "your code goes here" for any mappings with a custom action_cb
vim.keymap.set('n', 'u', api.tree.change_root_to_parent, opts('Up'))

end

require("nvim-tree").setup({ 
on_attach = on_attach,
sort_by = "case_sensitive", 
view = { 
adaptive_size = true, 
}, 
renderer = { 
group_empty = true, 
}, 
filters = { 
dotfiles = true, 
}, 
})

vim.api.nvim_set_keymap("n", "<F5>", ":NvimTreeToggle", { silent = false })
vim.api.nvim_set_keymap("n", "<F4>", ":NvimTreeFocus", { silent = false })
-- vim.api.nvim_set_hl(0, 'Comment', { italic=true })  

