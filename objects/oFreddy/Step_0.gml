cooldown_freddy -= 1

if (place_fr == 0)
{
	x = pos0_fr[0]
	y = pos0_fr[1]
}
if (place_fr == 1)
{
	x = pos1_fr[0]
	y = pos1_fr[1]

}
if (place_fr == 2)
{
	x = pos2_fr[0]
	y = pos2_fr[1]
}
if (place_fr == 3)
{
	x = pos3_fr[0]
	y = pos3_fr[1]
}
if (place_fr == 4)
{
	x = pos4_fr[0]
	y = pos4_fr[1]
}
if (place_fr == 5)
{
	x = pos5_fr[0]
	y = pos5_fr[1]
}

if (cooldown_freddy <= 0)or go_freddy == 1
{
	cooldown_freddy = random_range(2500, 3200)
	if (place_fr == 5)or go_freddy == 1
	{
		if (oDoorR.openR)
		{
			go_freddy = 1
			ind_freddy = 1
			image_index = 0
			image_xscale = 10
			image_yscale = 10
			image_angle = random_range(20, -20)
			x = room_width/2
			y = room_height/2
			x += random_range(6, -6)
			y += random_range(8, -8)
			cd_go_freddy -= 1
			if (cd_go_freddy <= 0)
			{
				instance_activate_object(oTextGo)
				x = room_width/2
				y = room_height/2
				instance_create_layer(900, 400, "mouse", oButt_exit)
				oButt_exit.image_xscale = 10
				oButt_exit.image_yscale = 10
			}
		}
		else
		{
			place_fr = 0
			cooldown_freddy = random_range(100, 300)
		}
	}
	place_fr += 1
}

//visible que sur les cams allumés

var trigg = instance_nearest(x,y,oTrigg_mobs)
if (trigg.active) && (ind_freddy == 0)
{
	image_index = 0
}
if (!trigg.active) && (ind_freddy == 0)
{
	image_index = 1
}