local M = {}

M.treesitter = {
  compiler = { "cl", "clang" },
  ensure_installed = {
    "rust",
    "vimdoc",
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "cpp",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",
    "cmake",

    -- rust
    "rust_analyzer",

    -- CI
    "docker_compose_language_service",
    "dockerls",
    "yamlls",
    "sqlls",

    -- python
    "pylsp"
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
    ignore = false,
  },
  actions = {
        open_file = {
            quit_on_open = true,
        },
    },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
