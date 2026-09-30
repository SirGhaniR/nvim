return {
    {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
	    require("catppuccin").setup({
		flavour = "mocha",
		highlight = {
		    enable = true,
		    additional_vim_regex_highlighting = false
		},
	    })
	    vim.cmd.colorscheme "catppuccin"
	end
    }
}
