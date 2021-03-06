--[[ Copyright (c) David-John Miller AKA Anoyomouse 2016
 * Part of the warehousing mod
 *
 * See LICENCE in the project directory for licence information
--]]
data:extend(
{
	{ -- Basic warehouse - 800 slots
		type = "container",
		name = "warehouse-basic",
		icon = "__Warehousing__/graphics/icons/warehouse-basic.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 2, result = "warehouse-basic"},
		max_health = 350,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-2.7, -2.7}, {2.7, 2.7}}, -- {{-2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{-3.0, -3.0}, {3.0, 3.0}}, -- {{-2.5, -2.5}, {2.5, 2.5}},
		fast_replaceable_group = "container",
		inventory_size = 800,
		picture =
		{
			filename = "__Warehousing__/graphics/entity/warehouse-basic-shadow.png",
			priority = "high",
			width = 260,
			height = 240,
			shift = {1.0, -0.3},
		},
	},
	{ -- Passive Provider Warehouse - 800 slots
		type = "logistic-container",
		name = "warehouse-passive-provider",
		icon = "__Warehousing__/graphics/icons/warehouse-passive-provider.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "warehouse-passive-provider"},
		max_health = 450,
		corpse = "big-remnants",
		collision_box = {{-2.7, -2.7}, {2.7, 2.7}}, -- {{-2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{-3.0, -3.0}, {3.0, 3.0}}, -- {{-2.5, -2.5}, {2.5, 2.5}},
		fast_replaceable_group = "container",
		inventory_size = 800,
		logistic_mode = "passive-provider",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		picture =
		{
			filename = "__Warehousing__/graphics/entity/warehouse-passive-provider-shadow.png",
			priority = "high",
			width = 260,
			height = 240,
			shift = {1.0, -0.3},
		},
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {2.01, 0.6},
				green = {2.52, 0.6}
				-- green = {4.5, 2.6}
			},
			wire =
			{
				red = {1.71, 0.3},
				green = {2.22, 0.3}
			}
		},
	},
	{ -- Storage Warehouse - 2000 slots
		type = "logistic-container",
		name = "warehouse-storage",
		icon = "__Warehousing__/graphics/icons/warehouse-storage.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "warehouse-storage"},
		max_health = 450,
		corpse = "big-remnants",
		collision_box = {{-2.7, -2.7}, {2.7, 2.7}}, -- {{-2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{-3.0, -3.0}, {3.0, 3.0}}, -- {{-2.5, -2.5}, {2.5, 2.5}},
		fast_replaceable_group = "container",
		inventory_size = 2000,
		logistic_mode = "storage",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		picture =
		{
			filename = "__Warehousing__/graphics/entity/warehouse-storage-shadow.png",
			priority = "high",
			width = 260,
			height = 240,
			shift = {1.0, -0.3},
		},
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {2.01, 0.6},
				green = {2.52, 0.6}
				-- green = {4.5, 2.6}
			},
			wire =
			{
				red = {1.71, 0.3},
				green = {2.22, 0.3}
			}
		},
	},
	{ -- Active Provider Warehouse - 800 slots
		type = "logistic-container",
		name = "warehouse-active-provider",
		icon = "__Warehousing__/graphics/icons/warehouse-active-provider.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "warehouse-active-provider"},
		max_health = 450,
		corpse = "big-remnants",
		collision_box = {{-2.7, -2.7}, {2.7, 2.7}}, -- {{-2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{-3.0, -3.0}, {3.0, 3.0}}, -- {{-2.5, -2.5}, {2.5, 2.5}},
		fast_replaceable_group = "container",
		inventory_size = 800,
		logistic_mode = "active-provider",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		picture =
		{
			filename = "__Warehousing__/graphics/entity/warehouse-active-provider-shadow.png",
			priority = "high",
			width = 260,
			height = 240,
			shift = {1.0, -0.3},
		},
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {2.01, 0.6},
				green = {2.52, 0.6}
				-- green = {4.5, 2.6}
			},
			wire =
			{
				red = {1.71, 0.3},
				green = {2.22, 0.3}
			}
		},
	},
	{ -- Requester Warehouse - 800 slots
		type = "logistic-container",
		name = "warehouse-requester",
		icon = "__Warehousing__/graphics/icons/warehouse-requester.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "warehouse-requester"},
		max_health = 450,
		corpse = "big-remnants",
		collision_box = {{-2.7, -2.7}, {2.7, 2.7}}, -- {{-2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{-3.0, -3.0}, {3.0, 3.0}}, -- {{-2.5, -2.5}, {2.5, 2.5}},
		fast_replaceable_group = "container",
		inventory_size = 800,
		logistic_mode = "requester",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		picture =
		{
			filename = "__Warehousing__/graphics/entity/warehouse-requester-shadow.png",
			priority = "high",
			width = 260,
			height = 240,
			shift = {1.0, -0.3},
		},
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {2.01, 0.6},
				green = {2.52, 0.6}
				-- green = {4.5, 2.6}
			},
			wire =
			{
				red = {1.71, 0.3},
				green = {2.22, 0.3}
			}
		},
	},
	{ -- Smart Warehouse - 800 slots
		type = "smart-container",
		name = "warehouse-smart",
		icon = "__Warehousing__/graphics/icons/warehouse-smart.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "warehouse-smart"},
		max_health = 450,
		corpse = "big-remnants",
		collision_box = {{-2.7, -2.7}, {2.7, 2.7}}, -- {{-2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{-3.0, -3.0}, {3.0, 3.0}}, -- {{-2.5, -2.5}, {2.5, 2.5}},
		fast_replaceable_group = "container",
		inventory_size = 800,
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		picture =
		{
			filename = "__Warehousing__/graphics/entity/warehouse-smart-shadow.png",
			priority = "high",
			width = 260,
			height = 240,
			shift = {1.0, -0.3},
		},
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {2.01, 0.6},
				green = {2.52, 0.6}
				-- green = {4.5, 2.6}
			},
			wire =
			{
				red = {1.71, 0.3},
				green = {2.22, 0.3}
			}
		},
	},
	{ -- Basic Storehouse - 150 slots
		type = "container",
		name = "storehouse-basic",
		icon = "__Warehousing__/graphics/icons/storehouse-basic.png",
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 2, result = "storehouse-basic"},
		max_health = 250,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "container",
		inventory_size = 150,
		picture =
		{
			filename = "__Warehousing__/graphics/entity/storehouse-basic.png",
			priority = "high",
			width = 129,
			height = 100,
			shift = {0.421875, 0},
		},
	},
	{ -- Provider Storehouse - 150 slots
		type = "logistic-container",
		name = "storehouse-passive-provider",
		icon = "__Warehousing__/graphics/icons/storehouse-passive-provider.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "storehouse-passive-provider"},
		max_health = 250,
		corpse = "big-remnants",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "container",
		inventory_size = 150,
		logistic_mode = "passive-provider",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		picture =
		{
			filename = "__Warehousing__/graphics/entity/storehouse-passive-provider.png",
			priority = "high",
			width = 129,
			height = 100,
			shift = {0.421875, 0},
		},
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {.26, -0.6},
				green = {.36, -0.6}
				-- green = {2.36, 1.3}
			},
			wire =
			{
				red = {-0.16, -0.9},
				green = {0.16, -0.9}
			}
		},
	},
	{ -- Active Storehouse - 150 slots
		type = "logistic-container",
		name = "storehouse-active-provider",
		icon = "__Warehousing__/graphics/icons/storehouse-active-provider.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "storehouse-active-provider"},
		max_health = 250,
		corpse = "big-remnants",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "container",
		inventory_size = 150,
		logistic_mode = "active-provider",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		picture =
		{
			filename = "__Warehousing__/graphics/entity/storehouse-active-provider.png",
			priority = "high",
			width = 129,
			height = 100,
			shift = {0.421875, 0},
		},
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {.26, -0.6},
				green = {.36, -0.6}
				-- green = {2.36, 1.3}
			},
			wire =
			{
				red = {-0.16, -0.9},
				green = {0.16, -0.9}
			}
		},
	},
	{ -- Requester Storehouse - 150 slots
		type = "logistic-container",
		name = "storehouse-requester",
		icon = "__Warehousing__/graphics/icons/storehouse-requester.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "storehouse-requester"},
		max_health = 250,
		corpse = "big-remnants",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "container",
		inventory_size = 150,
		logistic_mode = "requester",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		picture =
		{
			filename = "__Warehousing__/graphics/entity/storehouse-requester.png",
			priority = "high",
			width = 129,
			height = 100,
			shift = {0.421875, 0},
		},
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {.26, -0.6},
				green = {.36, -0.6}
				-- green = {2.36, 1.3}
			},
			wire =
			{
				red = {-0.16, -0.9},
				green = {0.16, -0.9}
			}
		},
	},
	{ -- Storage Storehouse - 300 slots
		type = "logistic-container",
		name = "storehouse-storage",
		icon = "__Warehousing__/graphics/icons/storehouse-storage.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "storehouse-storage"},
		max_health = 250,
		corpse = "big-remnants",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "container",
		inventory_size = 300,
		logistic_mode = "storage",
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		picture =
		{
			filename = "__Warehousing__/graphics/entity/storehouse-storage.png",
			priority = "high",
			width = 129,
			height = 100,
			shift = {0.421875, 0},
		},
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {.26, -0.6},
				green = {.36, -0.6}
				-- green = {2.36, 1.3}
			},
			wire =
			{
				red = {-0.16, -0.9},
				green = {0.16, -0.9}
			}
		},
	},
	{ -- Smart Storehouse - 150 slots
		type = "smart-container",
		name = "storehouse-smart",
		icon = "__Warehousing__/graphics/icons/storehouse-smart.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "storehouse-smart"},
		max_health = 250,
		corpse = "big-remnants",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "container",
		inventory_size = 150,
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		picture =
		{
			filename = "__Warehousing__/graphics/entity/storehouse-smart.png",
			priority = "high",
			width = 129,
			height = 100,
			shift = {0.421875, 0},
		},
		circuit_wire_max_distance = 7.5,
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {.26, -0.6},
				green = {.36, -0.6}
				-- green = {2.36, 1.3}
			},
			wire =
			{
				red = {-0.16, -0.9},
				green = {0.16, -0.9}
			}
		},
	},
})

