return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },

    config = function ()
        local nvimtree = require("nvim-tree")
        local api = require("nvim-tree.api")

        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1



	-- tree buffer keymaps
        local function my_on_attach(bufnr)

            local function opts(desc)
                return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
            end

            -- default mappings
            api.config.mappings.default_on_attach(bufnr)

            -- custom mappings
            vim.keymap.set('n', '<BS>',  api.tree.change_root_to_parent,        opts('Up'))
            vim.keymap.set('n', '.',     api.tree.change_root_to_node,          opts('Enter'))
            vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
            vim.keymap.set('n', '<C-CR>', api.node.open.tab, opts('Open: New Tab'))
        end


        nvimtree.setup({
            on_attach = my_on_attach,
	        view = {
	        },
            renderer = {
                highlight_opened_files = "all"
            },
            actions = {
                open_file = {
                    quit_on_open = true,
                },
            },
        })


	function function_with_params(f, params)
	    return function()
                return f(params)
            end
	end

	-- general keymaps
    vim.keymap.set('n', '<leader>e', api.tree.toggle)
	vim.keymap.set('n', '<leader>fe', function_with_params(api.tree.toggle,{find_file=true}))

    end,
}
