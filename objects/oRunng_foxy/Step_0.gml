y += vspd

//game over Foxy

if (y >= 500)or go_foxy == 1
{
	vspd = 0
	if (oDoorL.openL)or go_foxy == 1
	{
		go_foxy = 1
		ind_foxy = 1
		image_index = 1
		image_xscale = 10
		image_yscale = 10
		x = room_width/2
		y = room_height/2
		x += random_range(6, -6)
		y += random_range(8, -8)
		cd_go_foxy -= 1
		if (cd_go_foxy <= 0)
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
		image_angle = 90
		cooldown_door_foxy -= 1
	}
}

if (cooldown_door_foxy <= 0)
{
	instance_destroy()
	oFoxy.ind = 0
	oFoxy.state_fox = 4
	x = 463
	y = 248
}

//visibility

var trigg = instance_nearest(x,y,oTrigg_mobs)
if (trigg.active) && (ind_foxy == 0)
{
	image_index = 1
}
if (!trigg.active) && (ind_foxy == 0)
{
	image_index = 4
}