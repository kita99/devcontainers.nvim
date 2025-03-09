<p align="center">
  <h1 align="center">devcontainers.nvim</h1>
</p>

<p align="center">
    > Seamless DevContainers integration for Neovim.
</p>

> **⚠ Disclaimer:** This package is not yet ready for prime time. It is an evolving concept, and this README does not fully reflect its current capabilities.

## ⚡️ Features

- **Run Neovim inside DevContainers**: Open projects directly inside their respective development containers.
- **Automatic setup**: Detects and configures DevContainers based on `.devcontainer.json`.
- **Command integration**: Provides Neovim commands for managing containers seamlessly.
- **Portability**: Enables a consistent development environment across machines.
- **Fast and lightweight**: Optimized for Neovim with minimal overhead.

## 📋 Installation

<div align="center">
<table>
<thead>
<tr>
<th>Package manager</th>
<th>Snippet</th>
</tr>
</thead>
<tbody>
<tr>
<td>

[wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)

</td>
<td>

```lua
-- stable version
use {"kita/devcontainers.nvim", tag = "*" }
-- dev version
use {"kita/devcontainers.nvim"}
```

</td>
</tr>
<tr>
<td>

[junegunn/vim-plug](https://github.com/junegunn/vim-plug)

</td>
<td>

```lua
-- stable version
Plug "kita/devcontainers.nvim", { "tag": "*" }
-- dev version
Plug "kita/devcontainers.nvim"
```

</td>
</tr>
<tr>
<td>

[folke/lazy.nvim](https://github.com/folke/lazy.nvim)

</td>
<td>

```lua
-- stable version
require("lazy").setup({{"kita/devcontainers.nvim", version = "*"}})
-- dev version
require("lazy").setup({"kita/devcontainers.nvim"})
```

</td>
</tr>
</tbody>
</table>
</div>

## ☄ Getting started

1. Install the plugin using your preferred package manager.
2. Open a project that contains a `.devcontainer.json` file.
3. Run `:DevcontainerOpen` to start Neovim inside the container.

## ⚙ Configuration

<details>
<summary>Click to unfold the full list of options with their default values</summary>

> **Note**: The options are also available in Neovim by calling `:h devcontainers.options`

```lua
require("devcontainers").setup({
    auto_attach = true, -- Automatically attach to DevContainers if detected
    log_level = "info", -- Set logging level: "debug", "info", "warn", "error"
    attach_timeout = 5000, -- Timeout for attaching to the container (ms)
})
```

</details>

## 🧰 Commands

|   Command             |         Description                                      |
|----------------------|--------------------------------------------------|
|  `:DevcontainerOpen`  | Starts Neovim inside the detected DevContainer. |
|  `:DevcontainerRebuild` | Rebuilds the current DevContainer.                |
|  `:DevcontainerClose` | Stops and exits the current DevContainer.       |

## ⌨ Contributing

PRs and issues are always welcome. Make sure to provide as much context as possible when opening one.

## 🗞 Wiki

You can find guides and showcases of the plugin on [the Wiki](https://github.com/kita/devcontainers.nvim/wiki).

## 🎭 Motivations

While VS Code has built-in DevContainers support, Neovim lacks a native equivalent. `devcontainers.nvim` aims to bring the same seamless experience to Neovim users without relying on additional tools. Compared to alternatives, this plugin offers:

- **Neovim-native experience**: No need for VS Code dependencies.
- **Lightweight**: Minimal dependencies, optimized for performance.
- **More control**: Full configurability and customization through Lua.

If you use Neovim and work with DevContainers, this plugin will greatly enhance your workflow!
