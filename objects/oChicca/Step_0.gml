 cooldown_chica-=1
 
if (place_c == 0)
{
	x = pos0_c[0]
	y = pos0_c[1]
	var_place_c = current_second
}
if (place_c == 1)
{
	if (var_place_c % 2 == 0)
	{
		x = pos1a_c[0]
		y = pos1a_c[1]
	}
	else
	{
		x = pos1b_c[0]
		y = pos1b_c[1]
	}	
}
if (place_c == 2)
{
	if (var_place_c % 2 == 0)
	{
		x = pos2a_c[0]
		y = pos2a_c[1]
	}
	else
	{
		x = pos2b_c[0]
		y = pos2b_c[1]
	}
}
if (place_c == 3)
{
	x = pos3_c[0]
	y = pos3_c[1]
}
if (place_c == 4)
{
	x = pos4_c[0]
	y = pos4_c[1]
}
if (place_c == 5)
{
	x = pos5_c[0]
	y = pos5_c[1]
}
if (place_c == 6)
{
	x = pos6_c[0]
	y = pos6_c[1]
}
if (place_c == 7)
{
	x = pos7_c[0]
	y = pos7_c[1]
}

if (cooldown_chica <= 0)or go_chicca == 1
{
	cooldown_chica = random_range(800, 1600)
	if (place_c == 7)or go_chicca == 1
	{
		if (oDoorR.openR)
		{
			go_chicca = 1
			ind_chicca = 1
			image_index = 0
			image_xscale = 10
			image_yscale = 10
			x = room_width/2
			y = room_height/2
			x += random_range(6, -6)
			y += random_range(8, -8)
			cd_go_chicca -= 1
			if (cd_go_chicca <= 0)
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
			place_c = 0
			var_place_c = current_second
			cooldown_chica = random_range(100, 300)
		}
	}
	place_c += 1
	
}

//visible que sur les cams allumés

var trigg = instance_nearest(x,y,oTrigg_mobs)
if (trigg.active) && (ind_chicca == 0)
{
	image_index = 0
}
if (!trigg.active) && (ind_chicca == 0)
{
	image_index = 1
}