var tp_room = true
if (global.hour >= 6) && (tp_room)
{
	room_goto(rWin)
	instance_destroy(oBonnie)
	instance_destroy(oFreddy)
	instance_destroy(oFoxy)
	instance_destroy(oChicca)
}

if (keyboard_check_pressed(ord("W"))) && keyboard_check(vk_control)		//debug
{
	global.hour = 6
}