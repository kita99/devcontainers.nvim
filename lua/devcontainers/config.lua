local log = require("devcontainers.util.log")

local Devcontainers = {}

--- Devcontainers configuration with its default values.
---
---@type table
--- Default values:
---@eval return MiniDoc.afterlines_to_code(MiniDoc.current.eval_section)
Devcontainers.options = {
    -- Prints useful logs about what event are triggered, and reasons actions are executed.
    debug = false,
}

---@private
local defaults = vim.deepcopy(Devcontainers.options)

--- Defaults Devcontainers options by merging user provided options with the default plugin values.
---
---@param options table Module config table. See |Devcontainers.options|.
---
---@private
function Devcontainers.defaults(options)
    Devcontainers.options =
        vim.deepcopy(vim.tbl_deep_extend("keep", options or {}, defaults or {}))

    -- let your user know that they provided a wrong value, this is reported when your plugin is executed.
    assert(
        type(Devcontainers.options.debug) == "boolean",
        "`debug` must be a boolean (`true` or `false`)."
    )

    return Devcontainers.options
end

--- Define your devcontainers setup.
---
---@param options table Module config table. See |Devcontainers.options|.
---
---@usage `require("devcontainers").setup()` (add `{}` with your |Devcontainers.options| table)
function Devcontainers.setup(options)
    Devcontainers.options = Devcontainers.defaults(options or {})

    log.warn_deprecation(Devcontainers.options)

    return Devcontainers.options
end

return Devcontainers
