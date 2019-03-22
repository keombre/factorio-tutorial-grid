
-- register dummy hidden terchnology that show warning message when disabled
local warning_item = {
	{
		type = "technology",
		name = "***_warning_***_tutorial_grid_was_enabled_in_this_game_data_",
		icon_size = 128,
		icon = "__base__/graphics/technology/steel-processing.png",
		enabled = false,
		effects = {},
		unit =
		{
			count = 1,
			ingredients = {{"automation-science-pack", 1}},
			time = 5
		},
		order = "z-z"
	}
}

data:extend(warning_item)

-- remove all tiles
for _, tile in pairs(data.raw.tile) do
    tile.autoplace = nil
end

-- remove rocks
for _, simple in pairs(data.raw["simple-entity"]) do
    simple.autoplace = nil
end
-- remove decoratives
for _, decor in pairs(data.raw["optimized-decorative"]) do
    decor.autoplace = nil
end

-- remove fishes
for _, fish in pairs(data.raw["fish"]) do
    fish.autoplace = nil
end
-- place tutorial grid
data.raw.tile["tutorial-grid"].autoplace = {}
