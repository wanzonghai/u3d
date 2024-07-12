--J_角色属性升级表.xlsx
local team = {}
local config = 
{
	[1] =
	{
		id = 1,
		name = "名称",
		key = "role_name",
		value_type = "String",
		min_val = 0,
	},
	[2] =
	{
		id = 2,
		name = "等级",
		key = "lv",
		value_type = "Int",
		min_val = 0,
	},
	[1000] =
	{
		id = 1000,
		name = "当前生命",
		key = "hp",
		value_type = "Int",
		min_val = 0,
	},
	[1001] =
	{
		id = 1001,
		name = "生命",
		key = "hp_max",
		value_type = "Int",
		min_val = 0,
	},
	[1002] =
	{
		id = 1002,
		name = "攻击",
		key = "att",
		value_type = "Int",
		min_val = 0,
	},
	[1003] =
	{
		id = 1003,
		name = "防御",
		key = "def",
		value_type = "Int",
		min_val = 0,
	},
	[1004] =
	{
		id = 1004,
		name = "破甲",
		key = "sunder_armor",
		value_type = "Int",
		min_val = 0,
	},
	[1007] =
	{
		id = 1007,
		name = "命中",
		key = "hit",
		value_type = "Int",
		min_val = 0,
	},
	[1008] =
	{
		id = 1008,
		name = "闪避",
		key = "dodge",
		value_type = "Int",
		min_val = 0,
	},
	[1009] =
	{
		id = 1009,
		name = "暴击",
		key = "crit",
		value_type = "Int",
		min_val = 0,
	},
	[1010] =
	{
		id = 1010,
		name = "抗暴",
		key = "crit_res",
		value_type = "Int",
		min_val = 0,
	},
	[1011] =
	{
		id = 1011,
		name = "移动速度",
		key = "move_speed",
		value_type = "Float",
		min_val = 0,
	},
	[1012] =
	{
		id = 1012,
		name = "移动速度加成",
		key = "move_speed_bonus",
		value_type = "Float",
		min_val = 0,
	},
}
return config