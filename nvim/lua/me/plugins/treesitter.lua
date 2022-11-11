local status, ts = pcall(require, 'nvim-treesitter.configs')
if not status then
  print("Couldn't load 'nvim-treesitter' plugin!")
  return
end

ts.setup({
  highlight = { enable = true },
  indent = { enable = true },
  autotag = { enable = true },
  ensure_installed = {
    'javascript',
    'typescript',
    'css',
    'json',
    'lua',
    'bash',
    'c',
    'cpp',
    'dart',
    'diff',
    'dockerfile',
    'gitignore',
    'go',
    'graphql',
    'html',
    'http',
    'java',
    'kotlin',
    'markdown',
    'markdown_inline',
    'proto',
    'python',
    'regex',
    'rust',
    'scss',
    'sql',
    'svelte',
    'swift',
    'todotxt',
    'toml',
    'tsx',
    'vim',
    'vue',
    'yaml',
    'zig'
  },
  auto_install = true,
})
