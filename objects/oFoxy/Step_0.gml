cooldown_fox -= 1
var trigg = instance_nearest(x,y,oTrigg_mobs)

if (cooldown_fox <= 0)
{
	cooldown_fox = random_range(2000, 2600)
	state_fox -= 1
}

if (state_fox == 4)
{
	x = 304
	y = 240
}
if (state_fox <=-1)
{
	state_fox = 4
}

//animation attaque

if (state_fox == 0) //It's me
{
	cooldown_atk -= 1
	if (trigg.active) or (cooldown_atk == 0)
	{
		if (ind == 0)
		{
			instance_create_layer(463, 248, "mob", oRunng_foxy)		//cam couloir gauche : inst_41CF7F83
			ind = 1
		}
	}
}

//visible que sur les cams allumés

if (trigg.active) && (state_fox != -1)
{
	image_index = state_fox
}
else
{
	image_index = 4
}