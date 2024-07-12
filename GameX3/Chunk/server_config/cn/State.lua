--J_角色.xlsx
local team = {}
local config = 
{
	["idle"] =
	{
		name = "idle",
		cut = {"skill","hit","stun","hit_fly","jump","drag","frozen","chuan"},
		cut_attribute = team,
	},
	["run"] =
	{
		name = "run",
		cut = {"skill","stun","hit_fly","jump","drag","hit","stairs","fell"},
		cut_attribute = {"immobilize"},
	},
	["skill"] =
	{
		name = "skill",
		cut = {"hit_fly","jump","drag","hit","stairs","fell"},
		cut_attribute = team,
	},
	["stun"] =
	{
		name = "stun",
		cut = {"jump","drag","stairs","fell"},
		cut_attribute = {"armor","immuno_stun"},
	},
	["frozen"] =
	{
		name = "frozen",
		cut = {"jump","drag","stairs","fell"},
		cut_attribute = {"armor","immuno_stun"},
	},
	["hit"] =
	{
		name = "hit",
		cut = {"skill","stun","hit_fly","jump","drag","frozen","stairs","fell"},
		cut_attribute = {"armor","immuno_hit"},
	},
	["hit1"] =
	{
		name = "hit1",
		cut = {"stun","hit_fly","jump","drag","frozen","stairs","fell"},
		cut_attribute = {"armor","immuno_hit"},
	},
	["anim"] =
	{
		name = "anim",
		cut = {"skill","hit","stun","hit_fly","jump","drag","frozen","stairs","fell"},
		cut_attribute = {"immobilize"},
	},
	["chuan"] =
	{
		name = "chuan",
		cut = {"skill","hit","stun","hit_fly","jump","drag","frozen","stairs","fell"},
		cut_attribute = team,
	},
	["dead"] =
	{
		name = "dead",
		cut = team,
		cut_attribute = team,
	},
}
return config