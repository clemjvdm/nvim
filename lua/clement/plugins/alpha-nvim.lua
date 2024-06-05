return {
    'goolord/alpha-nvim',
    config = function ()
        local alpha = require('alpha')
        local dashboard = require('alpha.themes.dashboard')
        dashboard.section.header.val = {
[[    ___       ___       ___       ___       ___       ___       ___   ]],
[[   /\  \     /\__\     /\  \     /\__\     /\__\     /\  \     /\__\  ]],
[[  /::\  \   /:/  /    /::\  \   /::L_L_   /:/ _/_   _\:\  \   /::L_L_ ]],
[[ /:/\:\__\ /:/__/    /::\:\__\ /:/L:\__\ |::L/\__\ /\/::\__\ /:/L:\__\]],
[[ \:\ \/__/ \:\  \    \:\:\/  / \/_/:/  / |::::/  / \::/\/__/ \/_/:/  /]],
[[  \:\__\    \:\__\    \:\/  /    /:/  /   L;;/__/   \:\__\     /:/  / ]],
[[   \/__/     \/__/     \/__/     \/__/               \/__/     \/__/  ]]

        }
        alpha.setup(dashboard.opts)
    end
};

--[[
return {
    "goodlord/alpha-nvim",
    event = "VimEnter",
    config = function ()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
--[[    ___       ___       ___       ___       ___       ___       ___   ]]--,
--[[   /\  \     /\__\     /\  \     /\__\     /\__\     /\  \     /\__\  ]]--,
--[[  /::\  \   /:/  /    /::\  \   /::L_L_   /:/ _/_   _\:\  \   /::L_L_ ]]--,
--[[ /:/\:\__\ /:/__/    /::\:\__\ /:/L:\__\ |::L/\__\ /\/::\__\ /:/L:\__\]]--,
--[[ \:\ \/__/ \:\  \    \:\:\/  / \/_/:/  / |::::/  / \::/\/__/ \/_/:/  /]]--,
--[[  \:\__\    \:\__\    \:\/  /    /:/  /   L;;/__/   \:\__\     /:/  / ]]--,
--[[   \/__/     \/__/     \/__/     \/__/               \/__/     \/__/  ]]--

--[[
        }

    end,
}
]]--
