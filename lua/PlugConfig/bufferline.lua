local status, bufferline = pcall(require, "bufferline")
if (not status) then
  return
end

bufferline.setup {
    options = {
        --numbers = "buffer_id",

        close_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
        right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
        left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
        middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        name_formatter = function(buf) -- buf contains a "name", "path" and "bufnr"
            -- remove extension from markdown files for example
            if buf.name:match("%.md") then
                return vim.fn.fnamemodify(buf.name, ":t:r")
            end
        end,
        max_name_length = 15,
        max_prefix_length = 12, -- prefix used when a buffer is de-duplicated
        tab_size = 15,
        diagnostics = "nvim_lsp",
        diagnostics_update_in_insert = false,

        show_buffer_icons = true, -- disable filetype icons for buffers
        --show_buffer_close_icons = true | false,
        show_buffer_close_icons = false,
        --show_close_icon = true | false,
        show_close_icon = false,
        --show_tab_indicators = true | false,
        show_tab_indicators = true,
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        -- can also be a table containing 2 custom separators
        -- [focused and unfocused]. eg: { '|', '|' }
        --separator_style = "slant" | "thick" | "thin" | {"any", "any"},
        separator_style = "thin",
        --enforce_regular_tabs = false | true,
        enforce_regular_tabs = false,
        --always_show_bufferline = true | false,
        always_show_bufferline = true
    },

}




