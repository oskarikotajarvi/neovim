require('nvim_comment').setup({
    marker_padding = true,
    comment_empty = false,
    comment_empty_trim_whitespace = false,
    create_mappings = true,
    line_mapping = "<leader>cc",
    operator_mapping = "<leader>gc",
    comment_chunk_text_object = "<leader>ic",
    hook = nil
})
