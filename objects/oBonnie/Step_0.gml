 cooldown_bonnie-=1
 
if (place_b == 0)
{
	x = pos0_b[0]
	y = pos0_b[1]
	var_place_b = current_second
}
if (place_b == 1)
{
	if (var_place_b % 2 == 0)
	{
		x = pos1a_b[0]
		y = pos1a_b[1]
	}
	else
	{
		x = pos1b_b[0]
		y = pos1b_b[1]
	}	
}
if (place_b == 2)
{
	if (var_place_b % 2 == 0)
	{
		x = pos2a_b[0]
		y = pos2a_b[1]
	}
	else
	{
		x = pos2b_b[0]
		y = pos2b_b[1]
	}
}
if (place_b == 3)
{
	x = pos3_b[0]
	y = pos3_b[1]
}
if (place_b == 4)
{
	x = pos4_b[0]
	y = pos4_b[1]
}
if (place_b == 5)
{
	x = pos5_b[0]
	y = pos5_b[1]
}
if (place_b == 6)
{
	x = pos6_b[0]
	y = pos6_b[1]
}

if (cooldown_bonnie <= 0)or go_bonnie == 1
{
	cooldown_bonnie = random_range(800, 1600)
	if (place_b == 6)or go_bonnie == 1
	{
		if (oDoorL.openL)
		{
			go_bonnie = 1
			ind_bonnie = 1
			image_index = 0
			image_xscale = 10
			image_yscale = 10
			image_angle = random_range(20, -20)
			x = room_width/2
			y = room_height/2 + 70
			x += random_range(6, -6)
			y += random_range(8, -8)
			cd_go_bonnie -= 1
			if (cd_go_bonnie <= 0)
			{
				instance_activate_object(oTextGo)
				x = room_width/2
				y = room_height/2 + 70	
				instance_create_layer(900, 400, "mouse", oButt_exit)
				oButt_exit.image_xscale = 10
				oButt_exit.image_yscale = 10
			}
		}
		else
		{
			place_b = 0
			var_place_b = current_second
		}
	}
	place_b += 1
	
}
if (place_b == 6) && (!oDoorL.openL)
{
	cooldown_bonnie -=4
}

//visible que sur les cams allumés

var trigg = instance_nearest(x,y,oTrigg_mobs)
if (trigg.active) && (ind_bonnie == 0)
{
	image_index = 0
}
if (!trigg.active) && (ind_bonnie == 0)
{
	image_index = 1
}