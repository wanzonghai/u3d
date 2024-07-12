--J_技能.xlsx
local team = {}
local config = 
{
	[1001] =
	{
		id = 1001,
		name = "boss普攻",
		priority = 1,
		distance = 0.6,
		cd = 15,
		func = "Anim,N=skill1;\nDelay,T=1;\nDamage;Delay,T=1;",
		cut = {"stun","frozen"},
		cut_attribute = {"blindy"},
	},
	[1002] =
	{
		id = 1002,
		name = "角色普攻",
		priority = 1,
		distance = 0.6,
		cd = 0,
		func = "Anim,N=skill1;\nDelay,T=1;\nDamage;Delay,T=1;",
		cut = {"stun","frozen"},
		cut_attribute = {"blindy"},
	},
	[1003] =
	{
		id = 1003,
		name = "boss炸弹技能",
		priority = 1,
		distance = 0,
		cd = 0,
		func = "Anim,N=skill1;\nShake=0.5,T=0.2\nDelay,T=0.5;\nDamage;Delay,T=0.5;",
		cut = {"stun","frozen"},
		cut_attribute = {"blindy"},
	},
}
return config