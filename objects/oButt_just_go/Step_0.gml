if (place_meeting(x,y,oMouse))
{
	image_index = 1
}
else
{
	image_index = 0
}

if (place_meeting(x,y,oMouse)) && (mouse_check_button_pressed(mb_left))
{
	game_end()
}
