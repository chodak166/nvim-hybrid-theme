local config = {
	background_variants = {
		base = "#20272A",
		semi_flat = "#242A2E",
		flat = "#2A3034",
	},
	defaults = {
		theme = "dark",
		transparent = false,
		background_variant = "base",
		italics = {
			comments = true,
			keywords = false,
			functions = false,
			strings = false,
			variables = false,
			bufferline = false,
		},
		overrides = {},
	},
}

setmetatable(config, { __index = config.defaults })

return config
