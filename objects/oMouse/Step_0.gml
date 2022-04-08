//position du sprite de la souris

x=mouse_x
y=mouse_y

// collision avec les Triggers

if (place_meeting(x,y,oTrigger_box))
{
	var inst=instance_nearest(x,y,oTrigger_box)
	instt=inst.cam_variable
}
else
{
	instt=12
}