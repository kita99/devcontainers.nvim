local main = require("devcontainers.main")
local config = require("devcontainers.config")

local Devcontainers = {}

--- Toggle the plugin by calling the `enable`/`disable` methods respectively.
function Devcontainers.toggle()
    if _G.Devcontainers.config == nil then
        _G.Devcontainers.config = config.options
    end

    main.toggle("public_api_toggle")
end

--- Initializes the plugin, sets event listeners and internal state.
function Devcontainers.enable(scope)
    if _G.Devcontainers.config == nil then
        _G.Devcontainers.config = config.options
    end

    main.toggle(scope or "public_api_enable")
end

--- Disables the plugin, clear highlight groups and autocmds, closes side buffers and resets the internal state.
function Devcontainers.disable()
    main.toggle("public_api_disable")
end

-- setup Devcontainers options and merge them with user provided ones.
function Devcontainers.setup(opts)
    _G.Devcontainers.config = config.setup(opts)
end

_G.Devcontainers = Devcontainers

return _G.Devcontainers
