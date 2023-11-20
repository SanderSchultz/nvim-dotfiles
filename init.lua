require("schultzern")
require("schultzern.packer")
vim.g.clipboard = {
  name = "xclip-cc",
  copy = {
    ["+"] = "xclip -selection clipboard -i",
    ["*"] = "xclip -selection primary -i",
  },
  paste = {
    ["+"] = "xclip -selection clipboard -o",
    ["*"] = "xclip -selection primary -o",
  },
  cache_enabled = 0,
}
