require("nvim-tree").setup( {
	 view = {
			number = true,
			relativenumber = true,
	 },
	 renderer = {
			indent_markers = {
				 enable = true,
			},
			icons = {
				 show = {
						file = false,
						folder = false,
						folder_arrow = false,
				 },
				 glyphs = {
						folder = {
							 arrow_closed = "│",
							 arrow_open = "└",
						}
				 },
			},
	 },
})
