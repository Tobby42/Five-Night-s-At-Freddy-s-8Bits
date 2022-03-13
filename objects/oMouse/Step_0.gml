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

//clic menu

if (place_meeting(x,y,oButt_play)) && (mouse_check_button_pressed(mb_left))
{
	room_goto(rPizzaPlace)
	restart_map = 1
}
if (place_meeting(x,y,oButt_option)) && (mouse_check_button_pressed(mb_left))
{
	room_goto(rOption)
}

if (place_meeting(x,y,oButt_exit)) && (mouse_check_button_pressed(mb_left))
{
	game_restart()
}
