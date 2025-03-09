-- You can use this loaded variable to enable conditional parts of your plugin.
if _G.DevcontainersLoaded then
    return
end

_G.DevcontainersLoaded = true

-- Useful if you want your plugin to be compatible with older (<0.7) neovim versions
if vim.fn.has("nvim-0.7") == 0 then
    vim.cmd("command! Devcontainers lua require('devcontainers').toggle()")
else
    vim.api.nvim_create_user_command("Devcontainers", function()
        require("devcontainers").toggle()
    end, {})
end
