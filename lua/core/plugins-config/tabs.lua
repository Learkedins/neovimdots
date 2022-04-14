local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup {
  options = {
  offsets = {
    {
      filetype = "NvimTree",
      text = " ",
      highlight = "",
      text_align = "left"
    }
  },
    diagnostics = "nvim_lsp",
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
    local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,
  },
}
